FROM ghcr.io/boyuai/notebook-base

RUN pip install ipyturtle && jupyter nbextension enable --py --sys-prefix ipyturtle
RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.5.5 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipyturtle2==0.7.4 && jupyter nbextension enable --py --sys-prefix ipyturtle2
RUN pip install ipympl==0.5.7 && jupyter nbextension enable --py --sys-prefix ipympl
RUN pip install ipybbycell==0.2.1 && jupyter nbextension enable --py --sys-prefix ipybbycell
