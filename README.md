# Git-Auxiliary-Script
A Auxiliary Git Script For Beginners

# Download (Linux)
Download File:
```sh
curl -o ~/.local/bin/git_aux https://raw.githubusercontent.com/ChaoticOfChaos/Git-Auxiliary-Script/main/git_aux.sh
```

Turn File Into Executable:
```sh
chmod +x ~/.local/bin/git_aux
```

Execute:
```sh
git_aux
```

Full Command:
```sh
curl -o ~/.local/bin/git_aux https://raw.githubusercontent.com/ChaoticOfChaos/Git-Auxiliary-Script/main/git_aux.sh
chmod +x ~/.local/bin/git_aux
git_aux
```


# Download (Windows)
Download File:
```sh
curl https://raw.githubusercontent.com/ChaoticOfChaos/Git-Auxiliary-Script/main/GitAux.bat > GitAux.bat
```

Execute File:
```sh
./GitAux.bat
```

Full Command:
```sh
curl https://raw.githubusercontent.com/ChaoticOfChaos/Git-Auxiliary-Script/main/GitAux.bat > GitAux.bat
./GitAux.bat
```

# How To Use?
Execute Script and Select a Option
1 -> Configure Global User Name and Mail
2 -> Clone a Existent Repo
3 -> Initialize New Git Repo
4 -> Add New File to Repo
5 -> Add All File at Folder to Repo
6 -> Add Remote Repo URL
7 -> Change Remote Repo URL
8 -> Push Updates to Origin
9 -> Pull Updates From Origin
10 -> Do a Commit
11 -> Check Remote Repo URL
12 -> Show Local Status

Examples:<br>
Cloning a Existent Repo:
```sh
>>> 2
Repo URL >>> https://github.com/user/repo
Cloned: https://github.com/user/repo
```

Creating New Repo:
```sh
>>> 3
Repository Initialized.
>>> 6
Remote Repo URL (Use .git) >>> https://github.com/user/repo.git
Remote origin added.
```

Push Updates:
```sh
>>> 5
All Files added.
>>> 10
Commit Message >>> Initial Commit
Commit done.
>>> 8
Branch (use main by default) >>> main
Pushed to branch: main
```
