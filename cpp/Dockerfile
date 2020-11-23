FROM jupyter/minimal-notebook:414b5d749704
RUN conda install -y xeus-cling -c conda-forge
RUN conda install -y xwidgets -c conda-forge

RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.5.2 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipybbycell==0.0.7
