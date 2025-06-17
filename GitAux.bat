:: ::
:: Code Made by ChaoticOfChaos
:: Github : https://github.com/ChaoticOfChaos
:: ::

@echo off
:loop
cls
echo "__________GIT AUXILIARY__________"
echo "(1)  -> Configure Global User"
echo "(2)  -> Clone a Existent Repo"
echo "(3)  -> Create a New Repo"
echo "(4)  -> Add New Files"
echo "(5)  -> Add All Files"
echo "(6)  -> Add Remote Origin"
echo "(7)  -> Change Remote Origin"
echo "(8)  -> Push Updates"
echo "(9)  -> Pull Updates"
echo "(10) -> Commit"
echo "(11) -> Check Remote Origin"
echo "(12) -> Status"
echo "(99) -> Quit"
echo.
set /p usr_opt=">>> "

if "%usr_opt%"=="1" goto config_user
if "%usr_opt%"=="2" goto clone_repo
if "%usr_opt%"=="3" goto create_repo
if "%usr_opt%"=="4" goto add_file
if "%usr_opt%"=="5" goto add_all
if "%usr_opt%"=="6" goto add_origin
if "%usr_opt%"=="7" goto change_origin
if "%usr_opt%"=="8" goto push
if "%usr_opt%"=="9" goto pull
if "%usr_opt%"=="10" goto commit
if "%usr_opt%"=="11" goto check_origin
if "%usr_opt%"=="12" goto status
if "%usr_opt%"=="99" goto quit

echo Invalid option!
pause
goto loop

:config_user
set /p user_name="Full Name >>> "
set /p user_mail="E-Mail >>> "
git config --global user.name "%user_name%"
git config --global user.email "%user_mail%"
echo Configured Git global user.
pause
goto loop

:clone_repo
set /p repo_url="Repo URL >>> "
git clone "%repo_url%"
echo Cloned: %repo_url%
pause
goto loop

:create_repo
git init
echo Repository initialized.
pause
goto loop

:add_file
set /p file_name="File name >>> "
git add "%file_name%"
echo Added file: %file_name%
pause
goto loop

:add_all
git add .
echo All files added.
pause
goto loop

:add_origin
set /p repo_url="Remote Repo URL (use .git) >>> "
git remote add origin "%repo_url%"
echo Remote origin added.
pause
goto loop

:change_origin
set /p repo_url="New Remote Origin URL >>> "
git remote set-url origin "%repo_url%"
echo Remote origin updated.
pause
goto loop

:push
set /p branch="Branch name (use main by default) >>> "
git push origin "%branch%"
echo Pushed to branch: %branch%
pause
goto loop

:pull
set /p branch="Branch name (use main by default) >>> "
git pull origin "%branch%"
echo Pulled from branch: %branch%
pause
goto loop

:commit
set /p commit_message="Commit Message >>> "
git commit -m "%commit_message%"
echo Commit done.
pause
goto loop

:check_origin
git remote -v
pause
goto loop

:status
git status
pause
goto loop

:quit
echo Exiting...
