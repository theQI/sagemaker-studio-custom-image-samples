#!bash
ACCOUNT_ID="714686731622"
ECR_REPO_NAME="sm-ml-uw-custom-images"
IMAGE_NAME="py39-member-dl"
REGION="us-east-2"
AWS_PROFILE="default"

aws --region ${REGION} ecr get-login-password --profile ${AWS_PROFILE} | docker login --username AWS --password-stdin ${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${ECR_REPO_NAME}
#aws --region us-east-2 ecr get-login-password --profile default | docker login --username AWS --password-stdin 714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-ml-uw-custom-images

docker build . -t ${IMAGE_NAME} -t ${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${ECR_REPO_NAME}:${IMAGE_NAME}
#docker build . -t ${IMAGE_NAME} -t ${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${ECR_REPO_NAME}:${IMAGE_NAME}

docker push ${ACCOUNT_ID}.dkr.ecr.${REGION}.amazonaws.com/${ECR_REPO_NAME}:${IMAGE_NAME}
#docker push 714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-ml-uw-custom-images:py39-member-dl