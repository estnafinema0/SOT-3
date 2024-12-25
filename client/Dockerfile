FROM python:3-slim

RUN apt-get update && yes | apt-get upgrade && yes | apt-get install wget \
    && wget https://dl.min.io/server/minio/release/linux-amd64/minio \
    && chmod +x minio && mv minio /usr/local/bin/ \
    && wget https://dl.min.io/client/mc/release/linux-amd64/mc \
    && chmod +x mc && mv mc /usr/local/bin/

COPY start.sh start.sh
COPY 123.txt 123.txt
COPY loader.py loader.py

RUN python3 loader.py

COPY hq720.jpg happyface.jpg
EXPOSE 9001
EXPOSE 9000

CMD chmod +x start.sh; ./start.sh
