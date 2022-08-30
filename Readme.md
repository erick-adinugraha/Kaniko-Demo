# Kaniko Demo

## Create GCP service account
Create GCP service account with permission storage admin, download it, put it in this directory, and rename it to kaniko-secret.json
https://cloud.google.com/container-registry/docs/advanced-authentication#json-key

## Create kubernetes secret
kubectl create secret generic kaniko-secret --from-file=kaniko-secret.json

## Edit create_kanikopod_yaml.sh
Edit script create_kanikopod_yaml.sh with the correct value accordingly, and give it executable permission
```bash
sudo chmod +x create_kanikopod_yaml.sh
```

## Create kanikopod.yaml
```bash
./create_kanikopod_yaml.sh
```
After executing above command, you will get kanikopod.yaml

## Create kaniko pod
```bash
kubectl create -f kanikopod.yaml
```
After executing above command, kaniko will build your docker image and push it to your GCR
