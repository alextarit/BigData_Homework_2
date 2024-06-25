FROM eclipse-temurin:8-jre

RUN apt-get update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update

RUN apt install -y python3.11 python3-pip

RUN python3.11 -m pip install jupyter pyspark==3.5.1

CMD python3.11 -m notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root