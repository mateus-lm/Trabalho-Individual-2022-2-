FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install poetry 

RUN apt update -y
RUN apt-get install python3-sphinx doxygen sphinx-common -y

COPY . .
