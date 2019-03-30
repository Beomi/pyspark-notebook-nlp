ARG BASE_CONTAINER=jupyter/pyspark-notebook:59b402ce701d

FROM $BASE_CONTAINER

# Install Tensorflow
RUN conda install --quiet --yes \
    'tensorflow-gpu=1.12*' \
    'keras=2.2*' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

# Korea NLP Packages
RUN pip install git+https://github.com/naver/kor2vec.git
RUN pip install konlpy
RUN pip install pymysql
USER root
RUN apt-get update && apt-get install -y curl
RUN curl -L https://gist.githubusercontent.com/Beomi/d2e0020af670dd925a42053f0947ea0b/raw/ea0e0c6522755fc4659b3ce4a6de4747084f895c/mecab-py3.sh | bash
RUN conda uninstall --quite --yes pyarrow
RUN conda install --quite --yes fastparquet
USER ${NB_USER}


