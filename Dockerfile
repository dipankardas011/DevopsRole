FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y python-pip python-dev

# COPY ./requirements.txt /app/requirements.txt
COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD [ "python", "./job1.py", "./job2.py", "./api-route.py" ]