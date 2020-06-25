FROM jupyter/minimal-notebook:414b5d749704

RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    spacy==2.2.3 \
    tqdm==4.42.0 \
    numpy==1.18.1 \
    scipy==1.4.1 \
    tensorflow==2.1.0 \
    Keras==2.3.1 \
    scikit-image==0.16.* \
    scikit-learn==0.22.* \
    pillow==7.1.* \
    matplotlib==3.2.* \
    jieba==0.42.* \
    pandas==1.0.* \
    https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/jupyterhub/misc/en_core_web_sm-2.2.5.tar.gz

# dlib
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    cmake==3.17.2 \
    boost==0.1 \
    dlib==19.19.0 \
    opencv-python==4.2.0.34

RUN pip install ipyturtle
RUN jupyter nbextension enable --py --sys-prefix ipyturtle
RUN pip install ipyaliplayer==0.2.0 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.4.6 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipyturtle2==0.3.0 && jupyter nbextension enable --py --sys-prefix ipyturtle2
