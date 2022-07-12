FROM python:3.10.5-slim-bullseye

ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/web/app
COPY ./app/requirements.txt /usr/src/web/app/

RUN apt update && \
    pip install -r requirements.txt

