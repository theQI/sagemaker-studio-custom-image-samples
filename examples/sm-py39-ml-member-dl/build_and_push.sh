#!bash
sm-docker build . -t smstudio-r -t 714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-py39-ml-member-dl --profile medmutual

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 714686731622.dkr.ecr.us-east-2.amazonaws.com --profile medmutual

docker tag dd255931d3c4 714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-py39-ml-member-dl
docker push 714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-py39-ml-member-dl

{
    "repository": {
        "repositoryArn": "arn:aws:ecr:us-east-2:714686731622:repository/sm-py39-ml-member-dl",
        "registryId": "714686731622",
        "repositoryName": "sm-py39-ml-member-dl",
        "repositoryUri": "714686731622.dkr.ecr.us-east-2.amazonaws.com/sm-py39-ml-member-dl",
        "createdAt": "2022-05-05T22:25:05-04:00",
        "imageTagMutability": "MUTABLE",
        "imageScanningConfiguration": {
            "scanOnPush": true
        },
        "encryptionConfiguration": {
            "encryptionType": "AES256"
        }
    }
}