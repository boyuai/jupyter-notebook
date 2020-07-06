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
    matplotlib==3.2.2 \
    jieba==0.42.* \
    pandas==1.0.* \
    xlrd==1.2.0 \
    https://opendl.boyuai.com/jupyter-deps/en_core_web_sm-2.2.5.tar.gz

# dlib
RUN pip install -i https://mirrors.aliyun.com/pypi/simple \
    cmake==3.17.2 \
    boost==0.1 \
    dlib==19.19.0 \
    opencv-python==4.2.0.34

RUN pip install ipyturtle && jupyter nbextension enable --py --sys-prefix ipyturtle && \
    pip install ipyaliplayer==0.2.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer && \
    pip install ipyquiz==0.4.6 && jupyter nbextension enable --py --sys-prefix ipyquiz && \
    pip install ipyturtle2==0.3.0 && jupyter nbextension enable --py --sys-prefix ipyturtle2

# matplotlib chinese v3.2.2
RUN wget -O /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/matplotlibrc https://opendl.boyuai.com/jupyter-deps/matplotlibrc && \
    wget -O /opt/conda/lib/python3.7/site-packages/matplotlib/mpl-data/fonts/ttf/SimHei.ttf https://opendl.boyuai.com/jupyter-deps/SimHei.ttf
