for tag in `git tag --list | grep "rel-" -v`; do
  git tag -d $tag
done