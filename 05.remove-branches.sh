for t in `git branch -r` ; do
  git branch -d -r $t
done