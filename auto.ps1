git add .

$message = Read-Host "Enter commit message: "

git commit -S -m "$message" 

git push -u origin master