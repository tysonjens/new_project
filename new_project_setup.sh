New Project

## Goal is to lay out git, docker and other steps to start a new project
## Project can be run locally OR within Docker OR in google cloud

## Step 1 - create a local directory

mkdir new_project
cd new_project

## create a git repository called code

git init code
cd code

## after adding some code

git add .
git commit -m "my message"

## 

git remote add origin git@github.com:tysonjens/new_project.git
git remote -v

