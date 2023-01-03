echo "2p96pVBS6bjUeu3q9kls3desc56" | docker login --username=上海伯禹教育科技有限公司 registry.cn-shanghai.aliyuncs.com --password-stdin
docker build -t registry.cn-shanghai.aliyuncs.com/boyu/notebook-cpp .
docker push registry.cn-shanghai.aliyuncs.com/boyu/notebook-cpp
