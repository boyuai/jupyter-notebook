FROM jupyter/minimal-notebook:414b5d749704

# 新增一个用户组editors用于编辑挂载的共享目录
USER root
RUN groupadd --gid 1200 editors
RUN useradd -ms /bin/sh -g 1200 editor
USER jovyan

RUN conda install -y xeus-cling -c conda-forge
RUN conda install -y xwidgets -c conda-forge

RUN pip install -i https://mirrors.aliyun.com/pypi/simple jupyter_contrib_nbextensions && \
jupyter contrib nbextension install --sys-prefix
RUN pip install -i https://mirrors.aliyun.com/pypi/simple jupyter_nbextensions_configurator && \
jupyter nbextensions_configurator enable  --sys-prefix
RUN jupyter nbextension enable --sys-prefix toc2/main
COPY ./notebook.json /home/jovyan/.jupyter/nbconfig/notebook.json

RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.5.2 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipybbycell==0.0.12
