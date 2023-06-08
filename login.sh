# login.sh
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin [ACCOUNT_NUMBER].dkr.ecr.ap-southeast-1.amazonaws.com
