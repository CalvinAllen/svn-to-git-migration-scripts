# SAME AS PREVIOUS STEP, BUT IF ANYTHING STILL EXISTS, WE'LL CONSIDER IT A FEATURE BRANCH
# AND ORGANIZE IT UNDER A "FEATURES" FOLDER.

for fb in `git branch -a | grep "svn/"`; do
  newBranchName=${fb:4}
  git branch -m $fb $newBranchName
done