# jupyter-notebook

单用户的预设jupyter镜像，主要用途是预设代码和数据集

## 代码

直接在Dockerfile中COPY进去

## 模型等二进制文件

存到OSS网盘，然后在Dockerfile中wget下来，注意需要保证目录存在

## 注意事项

加载东西的时候，需要使用完整路径，例如`load_model("writing/models/activation.h5")`

## 更新

push以后，大概等个10来分钟，会自动构建完成，然后在notebook网页端重启自己的server就可以看到变更
