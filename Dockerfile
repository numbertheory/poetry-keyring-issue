FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3 python3-pip python3-venv

RUN pip3 install poetry==1.0.0

WORKDIR /opt/app

COPY pyproject.toml /opt/app/pyproject.toml
COPY poetry.lock /opt/app/poetry.lock

RUN poetry install
