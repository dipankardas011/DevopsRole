FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y && \
     apt install python3-pip python3-dev -y

COPY . /app

WORKDIR /app

RUN pip install -U Flask
RUN pip3 install requests

CMD [ "./exec.sh" ]