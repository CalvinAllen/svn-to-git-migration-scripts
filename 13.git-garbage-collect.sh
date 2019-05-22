# Ensure all old refs are fully removed
rm -Rf .git/logs .git/refs/original

# Perform a garbage collection to remove commits with no refs
git gc --prune=all --aggressive
