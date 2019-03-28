GCloud is a toolset for Google Cloud Platform Resources like bigtable, compute engine .. etc 
In this kata we will install gcloud sdk to the ubuntu .

## Katas

First export gcloud sdk repositories  `export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"`{{execute}}.

Set deb packages to the local package list  `echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list`{{execute}}.

Import the Google Cloud Platform public key `curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -`{{execute}}.

Update the package list and install the Cloud SDK  `sudo apt-get update && sudo apt-get install google-cloud-sdk`{{execute}}.

