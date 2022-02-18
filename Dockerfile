FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y && \
     apt install python3-pip python3-dev -y

# COPY ./requirements.txt /app/requirements.txt
COPY . /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD [ "python", "./job1.py", "./job2.py", "./api-route.py" ]