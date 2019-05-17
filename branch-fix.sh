for branch in `git branch -r | grep "branches/" | sed 's/ branches\///'`; do
  git branch $branch refs/remotes/$branch
done