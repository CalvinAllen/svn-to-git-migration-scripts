for t in `cat ./list_of_branches_for_deletion.txt`; do 
  git branch -D $t
done