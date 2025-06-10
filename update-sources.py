#!/usr/bin/env python3
import argparse
import concurrent.futures
import os
import re
import subprocess
from pathlib import Path

SOURCE_REGEX = re.compile(
    r'(?P<name>"[^"]+")\s*=\s*lib\.(?P<type>url-source|git-source)\s*{[^}]*?url\s*=\s*"(?P<url>[^"]+)"[^}]*?hash\s*=\s*"(?P<hash>[^"]*)"',
    re.DOTALL,
)

def get_new_hash(entry_type: str, url: str) -> str:
    try:
        if entry_type == "url-source":
            result = subprocess.run(
                ["nix-prefetch-url", "--type", "sha256", url],
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.DEVNULL,
                text=True
            )
            hash_output = result.stdout.strip().splitlines()[-1]
            sri_result = subprocess.run(
                ["nix-hash", "--type", "sha256", "--to-sri", hash_output],
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.DEVNULL,
                text=True
            )
            return sri_result.stdout.strip().splitlines()[-1]
    except Exception as e:
        print(f"Warning: Failed to fetch hash for {url}: {e}")
        return None

def update_file(input_path: str, output_path: str, parallelism: int):
    with open(input_path, "r") as f:
        content = f.read()

    matches = list(SOURCE_REGEX.finditer(content))
    updated_blocks = {}

    def process(match):
        name, source_type, url, _ = match.group("name", "type", "url", "hash")
        new_hash = get_new_hash(source_type, url)
        if new_hash:
            updated_blocks[match.start()] = (
                match.group(0),
                re.sub(r'hash\s*=\s*"[^"]*"', f'hash = "{new_hash}"', match.group(0))
            )

    with concurrent.futures.ThreadPoolExecutor(max_workers=parallelism) as executor:
        futures = [executor.submit(process, m) for m in matches]
        concurrent.futures.wait(futures)

    if updated_blocks:
        result = []
        last_index = 0
        for start in sorted(updated_blocks):
            old, new = updated_blocks[start]
            end = start + len(old)
            result.append(content[last_index:start])
            result.append(new)
            last_index = end
        result.append(content[last_index:])

        with open(output_path, "w") as f:
            f.write("".join(result))
        print(f"Updated file written to: {output_path}")
    else:
        print("No updates made.")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True, help="Path to the input nix file")
    parser.add_argument("--output", required=True, help="Path to write the updated nix file")
    parser.add_argument("--parallelism", type=int, default=1, help="Number of threads to use")
    args = parser.parse_args()
    update_file(args.input, args.output, args.parallelism)
