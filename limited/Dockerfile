FROM jupyter/minimal-notebook:414b5d749704

# 这几个插件经常变动，因此放在结尾
RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer && \
    pip install ipyquiz==0.5.5 && jupyter nbextension enable --py --sys-prefix ipyquiz
