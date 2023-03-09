$remote = Read-Host "Enter remote URL: "
git remote add origin $remote
git branch -M master
git pull
git push -u origin master