# CREATES A LOCAL BRANCH FOR EVERY IMPORTED "REMOTE" BRANCH

git config remote.origin.url .
git config --add remote.origin.fetch +refs/remotes/*:refs/heads/*
git fetch