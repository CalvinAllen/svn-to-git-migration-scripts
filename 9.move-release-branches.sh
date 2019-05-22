for rb in `git branch -a | grep "rb-"`; do
  newBranchName=${rb:4}
  git branch -m $rb releases/$newBranchName
done