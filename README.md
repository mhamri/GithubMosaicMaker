# How to create a github mosiac?
![github mosaic](.\how\mosaic-example.png)

## method 1: in one go
it takes about 10 minute and you need to run the 
```
.\runMe.ps1
```
for to be able to doing that you need to open a powershell script with administrator privilage. 
then you need to set the execution policy. go to `OneGo` folder and run the file. 

## method 2: gradually
this is a script that you need to put it in your scheduler and set it to run hourly. 
just create a scheduler and point it to `run.bat`. just make sure to configure to working folder as same folder that the `run.bat` is.
on each time that it run, it will create a new commit and will push it to github.