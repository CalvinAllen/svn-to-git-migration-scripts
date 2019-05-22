for t in `git branch -a|grep '%20'` ; do
  newName=`echo $t | sed 's/%20/-/g'`
  git branch -m $t $newName
done