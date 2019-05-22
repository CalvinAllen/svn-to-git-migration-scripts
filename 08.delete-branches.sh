# CYCLES THROUGH THE BRANCHES STILL IN THE TEXT FILE FROM THE PREVIOUS STEP
# AND DELETES THEM.

for t in `cat ./list_of_branches_for_deletion.txt`; do 
  git branch -D $t
done