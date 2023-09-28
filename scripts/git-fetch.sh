echo "=> Step: git fetch all and prune"
git fetch --all -p; git pull; git status;
echo "=> Step: merge origin/main"
git merge origin/main;
echo "=> Step: git push"
git push;
echo "=> Step: local branches"
# git branch;
