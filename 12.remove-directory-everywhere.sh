# Remove DIRECTORY_NAME from all commits, then remove the refs to the old commits
# (repeat these two commands for as many directories that you want to remove)

git filter-branch --index-filter 'git rm -rf --cached --ignore-unmatch src/db/_snapshots/' --prune-empty --tag-name-filter cat -- --all
git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d
