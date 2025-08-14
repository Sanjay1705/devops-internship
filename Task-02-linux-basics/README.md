# Task 02 – Linux Basics

## Objective
Understand and practice essential Linux commands for navigation, file management, editing, searching, permissions, and help utilities.

## Steps Covered
1. Navigated directories using
  `pwd` - Show current directory
  `cd` -  Change directory (e.g., cd /home/user) 
  `ls` -  List files and folders (ls -l for details, ls -a for hidden files)
2. Created and managed files/folders using
  `mkdir` - Create a new folder (mkdir projects)
  `touch` - Create a new file (touch notes.txt)
  `mv` - Move or rename (mv old.txt new.txt)
  `rm` - Delete files (rm old.txt)
  `cp` - Copy files/folders (cp file.txt backup.txt)
  `rmdir` - Remove an empty directory
3. Edited files using
  `nano`  - Simple text editor (nano notes.txt)
  `vim` - Advanced text editor (vim notes.txt)
  `cat` - Display file content (cat notes.txt)
4. Searched files and content using
  `find` - Search for files (find . -name 'file.txt')
  `grep` - Search inside files (grep 'error' log.txt)
5. Modified file permissions using
  `chmod` - Change file permissions (chmod 755 script.sh)
  `chown` - Change file ownership
  ` ls -l` - View current permissions
6. Viewed help and manuals using
  `man` - View manual for a command (man ls)
  `--help` - Get help for a command (ls --help)

## Files
- `scripts/linux_basics.sh`: Shell script automating Linux basics tasks

## Author
Sanjay Mehra – DevOps Intern at BKN301
