FROM jupyter/pyspark-notebook:latest

RUN pip install git+https://github.com/naver/kor2vec.git
RUN pip install konlpy


