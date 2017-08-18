# create token 
# https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/
GIT_TOKEN=<your git token>
GIT_USER=<your git user>
export MINISHIFT_PASSWORD=<rhn pasword>
export MINISHIFT_USERNAME=<rhn user>
minishift start --vm-driver virtualbox --memory 8196
oc delete project myproject
./deploy_launchpad_mission.sh -p rhoar -i developer:developer -g $GIT_USER:$GIT_TOKEN
