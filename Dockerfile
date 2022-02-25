FROM python:3.9.1-alpine


RUN apk add build-base
ADD . /tmp/
WORKDIR /tmp/
RUN  python /tmp/setup.py install
WORKDIR /
RUN rm -r /tmp/

CMD screen --command listen --port $port