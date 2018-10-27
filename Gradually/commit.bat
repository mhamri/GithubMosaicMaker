SET DT=%date% %time%
echo # last observed moment is %DT%> readme.md
git add .
git commit -a -m "adding %DT%"
git push --force origin master
git reset --soft HEAD~12
git commit -m "squashed"
git push --force origin master