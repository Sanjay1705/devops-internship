

# Git Basics Automation Script

echo "Initializing Git Basics Task..."

# Step 1: Create hello.txt
echo "Hello Git!" > hello.txt
echo "Created hello.txt"

# Step 2: Check Repository status
git status

# Step 3: Stage and Commit
git add hello.txt
git commit -m "Add hello.txt file"

# Step 4: Push to main
git push origin main

# Step 5: Create new branch
git checkout -b feature-update

# Step 6: Modify file
echo "This is my first branch update." >> hello.txt

# Step 7: Stage, Commit, Push
git add hello.txt
git commit -m "Update hello.txt with branch change"
git push origin feature-update

echo "Git basics workflow completed."
