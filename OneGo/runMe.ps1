$date= Get-Date;
Write-Output "started...";
for ($i = $date.AddMonths(-12); $i -le $date; $i=$i.AddDays(1)) {
    
    $randomCommit=Get-Random -Maximum 50 -Minimum 1;
    Set-Date $i;
    for ($j = 0; $j -lt $randomCommit ; $j++) {
        Write-Output "$i $j" | Out-File dummy.txt -NoNewline
        cmd /c "git add .";
        # cmd /c "dir";
        cmd /c "git commit -a -m ""add file to git $i $j""";
    }
    
}
Write-Output "Ended...";