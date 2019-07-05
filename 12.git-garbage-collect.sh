# THIS RUNS A GARBAGE COLLECTION ON THE REPO.
# SINCE WE'VE DONE SO MUCH CLEANUP, AND MOVING AROUND, ETC., WE NEED TO DO THIS 
# BEFORE WE PUSH AS A FINAL CLEAN UP STEP.

# Ensure all old refs are fully removed
rm -Rf .git/logs .git/refs/original

# Perform a garbage collection to remove commits with no refs
git gc --prune=all --aggressive
