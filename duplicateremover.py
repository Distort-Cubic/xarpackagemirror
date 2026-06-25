filename = "fbwfunctionlistnoduplicate.txt"

seen = set()
unique_lines = []

with open(filename, "r", encoding="utf-8") as f:
    for line in f:
        key = line.rstrip("\r\n")

        if key not in seen:
            seen.add(key)
            unique_lines.append(key + "\n")

# Remove trailing newline from the final line if desired
if unique_lines:
    unique_lines[-1] = unique_lines[-1].rstrip("\n")

with open(filename, "w", encoding="utf-8") as f:
    f.writelines(unique_lines)

print("Duplicates removed.")