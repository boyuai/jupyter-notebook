FROM jupyter/scipy-notebook

RUN pip install numpy scikit-image sklearn pillow matplotlib tensorflow keras jieba 

RUN mkdir datasets

USER root

COPY writing writing
RUN cd datasets && wget https://s3.amazonaws.com/img-datasets/mnist.npz
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