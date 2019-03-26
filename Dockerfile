ARG BASE_CONTAINER=jupyter/pyspark-notebook:59b402ce701d

FROM $BASE_CONTAINER

# Install Tensorflow
RUN conda install --quiet --yes \
    'tensorflow=1.12*' \
    'keras=2.2*' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Korea NLP Packages
RUN pip install git+https://github.com/naver/kor2vec.git
RUN pip install konlpy
RUN pip install pymysql
