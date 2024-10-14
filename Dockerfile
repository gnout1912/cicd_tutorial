FROM ubuntu:latest
MAINTAINER Tuong B2206021 "tuongB2206021@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app

RUN python3 -m venv venv
RUN ./venv/bin/pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["./venv/bin/python"]
CMD ["flask_docker.py"]
