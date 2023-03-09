# auto setup local git repo

if(!(Test-Path -Path ".git")){
    git init
}

git add .
$message = Read-Host "Enter commit message: "
git commit -S -m "$message"
git branch -M master

if(!(Test-Path -Path ".git")){
    $remote = Read-Host "Enter remote URL: "
    git remote add origin $remote
}

Write-Output "Waiting for setup"

Start-Sleep -Seconds 2

git push -u origin master
