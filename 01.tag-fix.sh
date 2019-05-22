# ALL THE TAGS FROM THE ORIGINAL SVN REPO, ARE IMPORTED AS A REMOTE BRANCH, PREFIXED WITH "SVN/TAGS/"
# AND EXIST UNDER "REFS/REMOTES", SO IT ENDS UP LOOKING LIKE:
#	"REFS/REMOTES/SVN/TAGS/REL-9.8.0"
#
#	1. IN THE LOOP:
#		1. GET ALL THE REMOTE BRANCHES
#		2. GET ONLY THE BRANCHES WITH "TAGS/" IN THE NAME
#		3. GRAB JUST THE "SVN/TAGS/REL-9.8.0" PART OF THE NAME AND SET THE LOOP VARIABLE, "TAG"
# 	2. CREATE A NEW TAG NAME, USING THE ORIGINAL, BUT STRIPPING OFF THE "SVN/TAGS/" PART 
#	3. CREATES A NEW TAG USING THE NEW NAME (REL-9.8.0), AND THE BRANCH AS THE SOURCE
# 	4. DELETES THE IMPORTED BRANCH BY THE NAME (SVN/TAGS/REL-9.8.0)
#
#	ONCE ALL OF THE "TAGS" ARE MADE INTO ACTUAL GIT TAGS, AND THE BRANCHES REMOVED, THE ONLY BRANCHES
#	THAT REMAIN ARE BRANCHES THAT EXISTED IN SVN

for tag in `git branch -r | grep "tags/" | sed 's/ tags\///'`; do
  newTagName=${tag:9}
  git tag -a -m "Converting SVN tags" $newTagName refs/remotes/$tag
  git branch -rd $tag
done