FROM python:3-alpine

ENV PYTHONUNBUFFERED 1

RUN apk update

# Install all dependencies
COPY ./app/requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
      gcc libc-dev linux-headers postgresql-dev libffi-dev
RUN pip install -r requirements.txt
RUN apk del .tmp-build-deps

# Making app as the working directory and copying it to docker
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#Creating a user
RUN adduser -D user
USER user