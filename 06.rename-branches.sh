# CLEAN UP ANY BRANCH NAME THAT MIGHT HAVE A SPACE IN IT (GIT NO LIKEY).  REPLACES SPACE WITH UNDERSCORE.

for t in `git branch -a|grep '%20'` ; do
  newName=`echo $t | sed 's/%20/-/g'`
  git branch -m $t $newName
done