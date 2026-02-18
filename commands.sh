aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 127549748722.dkr.ecr.us-east-1.amazonaws.com

docker build --platform linux/amd64 -t global-partners-dashboard .

docker tag global-partners-dashboard:latest 127549748722.dkr.ecr.us-east-1.amazonaws.com/global-partners-dashboard:latest

docker push 127549748722.dkr.ecr.us-east-1.amazonaws.com/global-partners-dashboard:latest

