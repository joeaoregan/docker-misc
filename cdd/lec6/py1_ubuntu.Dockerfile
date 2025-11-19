FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip

WORKDIR /app
COPY . /app/

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]