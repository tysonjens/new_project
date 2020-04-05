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

## add new remote repo in github

git remote add origin git@github.com:tysonjens/new_project.git
git remote -v

## add data to data file

docker-machine create --driver google --google-project projectid --google-zone us-west3-a machinename

docker-machine env machinename

eval $(docker-machine env machinename)

gcloud compute firewall-rules create machine-8000 --action allow --target-tags “docker-machine” --source-ranges “0.0.0.0/0” --rules “tcp[:8000]”

docker run --rm -p 8888:8888 --name new_project_di_1.0 -v "$PWD":/home/jovyan/work jupyter/scipy-notebook:latest

gcloud compute ssh --project $PROJECT_ID --zone $ZONE $INSTANCE_NAME -- -L 8080:localhost:8080