
aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin [account_id].dkr.ecr.ap-southeast-1.amazonaws.com \
&& docker rmi -f $(docker images -aq) && docker compose down && docker compose pull && docker compose up -d && docker compose logs -f
