if [[ -d ".git" ]]; then
  echo "It seems this folder has already been linked to git!"
  return 1
else
  git init
  git add -A
  git commit -m "First commit (oneCallGitInit.sh)"
  git remote add origin $1
  git remote -v
  git push origin master
fi
