$(aws ecr get-login --no-include-email --region ap-northeast-2)
docker build -t pyspark-notebook-nlp .
docker tag pyspark-notebook-nlp:latest 596219441916.dkr.ecr.ap-northeast-2.amazonaws.com/pyspark-notebook-nlp:latest
docker push 596219441916.dkr.ecr.ap-northeast-2.amazonaws.com/pyspark-notebook-nlp:latest
