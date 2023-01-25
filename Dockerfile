FROM python:3.8-slim-buster

WORKDIR /app

#RUN apt-get update && apt-get install -y tree

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

#RUN tree

EXPOSE 8080

#ENTRYPOINT [ "python", "src/main.py" ]
