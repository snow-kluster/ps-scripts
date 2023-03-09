# auto setup local git repo

if (!(Test-Path -Path ".git")) {
    git init
    $remote = Read-Host "Enter remote URL: "
    git remote add origin $remote
}

Write-Output "Waiting for setup"

Start-Sleep -Seconds 2

git add .
$message = Read-Host "Enter commit message: "
git commit -S -m "$message" 
git push -u origin master