for fb in `git branch -a | grep "svn/"`; do
  newBranchName=${fb:4}
  git branch -m $fb features/$newBranchName
done