# REPO_URL https://github.com/damnshah17/propeller-task

npx create-react-app propeller-task
cd propeller-task

git status
git branch -M master
git add .
git commit -m "Initial React app"

gh auth status
gh auth login

gh repo create propeller-task --public --source=. --remote=origin --push
gh repo view --web

git checkout -b update_logo

npm start

git status
git add .
git commit -m "Update logo and link"
git push -u origin update_logo

gh pr create --base master --head update_logo --title "Update logo and link" --body "Replaces the default React logo with the Propeller Aero logo and updates the link to the DirtMate page."

gh pr view
gh pr merge --merge

git checkout master
git pull origin master