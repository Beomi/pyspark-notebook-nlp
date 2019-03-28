docker build -t pyspark-notebook-nlp .
docker tag pyspark-notebook-nlp:latest beomi/pyspark-notebook-nlp:latest
docker push beomi/pyspark-notebook-nlp:latest

