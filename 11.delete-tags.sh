# THERE WERE SOME TAGS THAT CAME ACROSS WITH WEIRD NAMES - LIKE THEY SHOULD HAVE BEEN BRANCHES
# THE -V FLAG ON THE GREP COMMAND IS "INVERSE", SO IT FINDS EVERY TAG THAT _DOES NOT_ HAVE
# "REL-" IN THE NAME, AND THEN DELETES IT

for tag in `git tag --list | grep "rel-" -v`; do
  git tag -d $tag
done