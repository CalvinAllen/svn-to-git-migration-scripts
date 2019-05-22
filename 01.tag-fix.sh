for tag in `git branch -r | grep "tags/" | sed 's/ tags\///'`; do
  newTagName=${tag:9}
  git tag -a -m "Converting SVN tags" $newTagName refs/remotes/$tag
  git branch -rd $tag
done