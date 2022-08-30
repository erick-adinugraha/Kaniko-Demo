export KANIKO_DEMO_GCP_PROJECT_NAME=<Replace with your GCP Project Name>
export KANIKO_DEMO_DOCKERFILE='Dockerfile'
export KANIKO_DEMO_CONTEXT='git://github.com/erick-adinugraha/Deployment'
export KANIKO_DEMO_DESTINATION=asia.gcr.io/${KANIKO_DEMO_GCP_PROJECT_NAME}/kaniko-demo:latest
export KANIKO_DEMO_CONTEXT_SUB_PATH='react-deployment'

envsubst '$KANIKO_DEMO_DOCKERFILE,$KANIKO_DEMO_CONTEXT,$KANIKO_DEMO_DESTINATION,$KANIKO_DEMO_CONTEXT_SUB_PATH' <  'kanikopod.yaml.example' > 'kanikopod.yaml'