FROM jupyter/minimal-notebook

USER root

RUN pip install -i https://mirrors.aliyun.com/pypi/simple numpy==1.16.* scipy==1.3.* scikit-image==0.15.* scikit-learn==0.21.* pillow matplotlib==3.1.* tensorflow==1.14.0 keras==2.2.4 jieba==0.39

RUN mkdir datasets

COPY writing writing
RUN cd datasets && wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/data/writing/mnist.npz
RUN cd writing/models && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/writing/knn.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/writing/activation.h5

COPY text text
RUN cd datasets && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/data/text/santi.txt && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/data/text/poetry.txt
RUN cd text/models && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/ngram_santi.pkl && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/lstm_poetry.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/seq2seq_poetry_model.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/seq2seq_poetry_encoder.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/seq2seq_poetry_decoder.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/text/seq2seq_poetry_dicts.pkl

COPY style style
RUN cd style/models && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/Monet-GA.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/VanGogh-GA.h5 && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/knn-monet.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/knn-vangogh.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/knn-skrik.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/knn-nude.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/knn-composition.joblib && \
    wget https://boyuai.oss-cn-shanghai.aliyuncs.com/disk/playground/models/style/vgg16_weights_tf_dim_ordering_tf_kernels_notop.h5