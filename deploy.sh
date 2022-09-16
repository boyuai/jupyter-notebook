docker build -t 527345677879.dkr.ecr.cn-northwest-1.amazonaws.com.cn/notebook .
# aws ecr get-login-password --region cn-northwest-1 | docker login --username AWS --password-stdin 527345677879.dkr.ecr.cn-northwest-1.amazonaws.com.cn
# docker login -u AWS -p $(aws ecr get-login-password --region cn-northwest-1) 527345677879.dkr.ecr.cn-northwest-1.amazonaws.com.cn
docker push 527345677879.dkr.ecr.cn-northwest-1.amazonaws.com.cn/notebook
