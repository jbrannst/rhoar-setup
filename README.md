# rhoar-setup
Skip to 5 if you have OCP running

1. Download minishift or CDK
ex. https://access.redhat.com/downloads/content/293/ver=3.1/rhel---7/3.1/x86_64/product-software

2. Install minishift
chmod +x ~/Downloads/cdk-3.1.0-1-minishift-darwin-amd64 
ln -s ~/Downloads/cdk-3.1.0-1-minishift-darwin-amd64 /usr/local/bin/minishift
ln -s ~/.minishift/cache/oc/v3.5.5.31/oc /usr/local/bin/oc
minishift setup-cdk

3. Allow cdk to run with enterprise creds
export MINISHIFT_PASSWORD=<your rh subs pwd>
export MINISHIFT_USERNAME=<your rh subs user>

4. Start minishift
minishift start --vm-driver virtualbox --memory 8196
oc delete project myproject

5. Create a github token (on your github.com account )
https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/

6. Run rhoar install, example
curl -O https://raw.githubusercontent.com/jbrannst/rhoar-setup/master/deploy_launchpad_mission.sh
chmod +x deploy_launchpad_mission.sh
./deploy_launchpad_mission.sh -p rhoar -i developer:developer -g <your github username>:<your github token>

Enjoy!
