#Author: Chandra Charugalla
#Jan 2023
#Description: Based on sample found in Google/Github

# Set parameters
GKE_PROJECT=sincere-actor-374621
GKE_CLUSTER=hschan-demo-cluster
GKE_SERVICE_ACCOUNT=hschan-serviceaccount
GKE_ZONE=us-central1-c
GKE_REGION=us-central1

gcloud config set project $GKE_PROJECT

# Delete the cluster
gcloud container clusters delete $GKE_CLUSTER --region $GKE_ZONE

# Delete service account
gcloud iam service-accounts delete "$GKE_SERVICE_ACCOUNT@$GKE_PROJECT.iam.gserviceaccount.com"

# Delete repository
gcloud artifacts repositories delete $GKE_PROJECT --location $GKE_REGION