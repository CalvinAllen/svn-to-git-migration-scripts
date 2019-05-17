for tag in `git branch -r | grep "tags/" | sed 's/ tags\///'`; do
  git tag -a -m"Converting SVN tags" $tag refs/remotes/$tag
done