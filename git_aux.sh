#!/bin/bash

##
# Code Made by ChaoticOfChaos
# Github : https://github.com/ChaoticOfChaos
##

while true; do
    clear
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

    read -p ">>> " usr_opt

    if [ "$usr_opt" -eq 1 ]; then
        read -p "Full Name >>> " user_name
        read -p "E-Mail >>> " user_mail
        git config --global user.name "$user_name"
        git config --global user.email "$user_mail"

        echo "Configured Git global user."
        
    elif [ "$usr_opt" -eq 2 ]; then
        read -p "Repo URL >>> " repo_url
        git clone "$repo_url"
        echo "Cloned: $repo_url"

    elif [ "$usr_opt" -eq 3 ]; then
        git init
        echo "Repository initialized."

    elif [ "$usr_opt" -eq 4 ]; then
        read -p "File name >>> " file_name
        git add "$file_name"
        echo "Added file: $file_name"

    elif [ "$usr_opt" -eq 5 ]; then
        git add .
        echo "All Files added."

    elif [ "$usr_opt" -eq 6 ]; then
        read -p "Remote Repo URL (use .git) >>> " repo_url
        git remote add origin "$repo_url"
        echo "Remote origin added."

    elif [ "$usr_opt" -eq 7 ]; then
        read -p "New Remote Origin URL (use .git) >>> " repo_url
        git remote set-url origin "$repo_url"
        echo "Remote origin updated."

    elif [ "$usr_opt" -eq 8 ]; then
        read -p "Branch (use main by default) >>> " branch
        git push origin "$branch"
        echo "Pushed to branch: $branch"

    elif [ "$usr_opt" -eq 9 ]; then
        read -p "Branch (use main by default) >>> " branch
        git pull origin "$branch"
        echo "Pulled from branch: $branch"

    elif [ "$usr_opt" -eq 10 ]; then
        read -p "Commit Message >>> " commit_message
        git commit -m "$commit_message"
        echo "Commit done."

    elif [ "$usr_opt" -eq 11 ]; then
        git remote -v

    elif [ "$usr_opt" -eq 12 ]; then
        git status

    elif [ "$usr_opt" -eq 99 ]; then
        break

    else
        echo "Invalid option!"

    fi
    
    read -p "Press Enter to Restart..." enter
done