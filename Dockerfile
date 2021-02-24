FROM jupyter/minimal-notebook:414b5d749704

# 新增一个用户组editors用于编辑挂载的共享目录
USER root
RUN groupadd --gid 1200 editors
RUN useradd -ms /bin/sh -g 1200 editor
USER jovyan

RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    spacy==2.3.0 \
    tqdm==4.42.0 \
    numpy==1.18.1 \
    scipy==1.4.1 \
    tensorflow==2.1.0 \
    Keras==2.3.1 \
    scikit-image==0.16.* \
    scikit-learn==0.22.* \
    pillow==7.1.* \
    matplotlib==3.2.2 \
    jieba==0.42.* \
    pandas==1.0.* \
    xlrd==1.2.0 \
    pkuseg==0.0.25 \
    https://opendl.boyuai.com/jupyter-deps/en_core_web_sm-2.3.0.tar.gz \
    https://opendl.boyuai.com/jupyter-deps/zh_core_web_sm-2.3.0.tar.gz

# dlib
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    cmake==3.17.2 \
    boost==0.1 \
    dlib==19.19.0 \
    opencv-python==4.2.0.34

# matplotlib chinese v3.2.2
RUN wget -O /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/matplotlibrc https://opendl.boyuai.com/jupyter-deps/matplotlibrc && \
    wget -O /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/fonts/ttf/SimHei.ttf https://opendl.boyuai.com/jupyter-deps/SimHei.ttf

# new libraries 20200825
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    wordcloud==1.8.0 \
    docx-mailmerge==0.5.0 \
    python-docx==0.8.7 \
    openpyxl==3.0.5

# new libraries 20201027
RUN pip install matplotlib-venn==0.11.6

# new libraries 20201125
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    seaborn==0.11.0 \
    pyecharts==1.0.0

# new libraries 20201209
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    xlwt==1.3.0

# seaborn dataset
RUN wget -O /tmp/seaborn-data.zip https://opendl.boyuai.com/jupyter-deps/seaborn-data.zip && \
    unzip -d ~/ /tmp/seaborn-data.zip
    
RUN pip install -i https://mirrors.aliyun.com/pypi/simple jupyter_contrib_nbextensions && \
jupyter contrib nbextension install --sys-prefix
RUN pip install -i https://mirrors.aliyun.com/pypi/simple jupyter_nbextensions_configurator && \
jupyter nbextensions_configurator enable  --sys-prefix
RUN jupyter nbextension enable --sys-prefix toc2/main
COPY ./notebook.json /home/jovyan/.jupyter/nbconfig/notebook.json

# 这几个插件经常变动，因此放在结尾
RUN pip install ipyturtle && jupyter nbextension enable --py --sys-prefix ipyturtle
RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.5.4 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipyturtle2==0.7.4 && jupyter nbextension enable --py --sys-prefix ipyturtle2
RUN pip install ipympl==0.5.7 && jupyter nbextension enable --py --sys-prefix ipympl
RUN pip install ipybbycell==0.0.12
