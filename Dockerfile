FROM ghcr.io/boyuai/notebook-base

# temp libraries 20230505
RUN pip install \
    streamlit==1.21.0 \
    nltk==3.8.1 \
    imbalanced-learn \
    onnxruntime

# 人工智能训练师素材
RUN wget -O /tmp/learn-ai-assets.zip https://opendl.boyuai.com/jupyter-deps/learn-ai-assets.zip && \
    unzip -d ~/ /home/jovyan/learn-ai-assets.zip

RUN pip install ipyturtle && jupyter nbextension enable --py --sys-prefix ipyturtle
RUN pip install ipyaliplayer==0.4.1 && jupyter nbextension enable --py --sys-prefix ipyaliplayer
RUN pip install ipyquiz==0.5.6 && jupyter nbextension enable --py --sys-prefix ipyquiz
RUN pip install ipyturtle2==0.7.4 && jupyter nbextension enable --py --sys-prefix ipyturtle2
RUN pip install ipympl==0.5.7 && jupyter nbextension enable --py --sys-prefix ipympl
RUN pip install ipybbycell==0.3.25 && jupyter nbextension enable --py --sys-prefix ipybbycell
