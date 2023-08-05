aws ecr get-login-password | docker login -u AWS --password-stdin "https://$(aws sts get-caller-identity --query 'Account' --output text).dkr.ecr.$(aws configure get region).amazonaws.com";
docker rmi -f $(docker images -aq); docker compose down && docker compose pull && docker compose up -d && docker compose logs -f
