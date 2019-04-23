FROM python:3.6.2-alpine3.6
LABEL maintainer="Ruth"

COPY requirements.txt /app/requirements.txt
COPY ./web /app
WORKDIR /app

RUN apk add --update gcc linux-headers musl-dev \
  && pip install -r requirements.txt

EXPOSE 8080
CMD python /app/app.py
