FROM jupyter/minimal-notebook

RUN pip install numpy scikit-image sklearn pillow matplotlib tensorflow==1.14.0 keras==2.2.4 jieba
