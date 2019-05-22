# REPEAT THESE TWO COMMANDS FOR WHATEVER FOLDER YOU WANT TO DELETE
# FROM EVERY BRANCH -INCLUDING HISTORY- YOU HAVE LOCALLY.  

git filter-branch --index-filter 'git rm -rf --cached --ignore-unmatch src/db/_snapshots/' --prune-empty --tag-name-filter cat -- --all
git for-each-ref --format="%(refname)" refs/original/ | xargs -n 1 git update-ref -d
