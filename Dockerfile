FROM docker:1.10.0
MAINTAINER Patrick Gaubatz <patrick@gaubatz.at>

ENV DOCKER_COMPOSE_VERSION 1.6.0

RUN apk --update add py-pip py-yaml \
    && pip install -U docker-compose==${DOCKER_COMPOSE_VERSION} \
    && rm -rf `find /usr/lib/python2.7 -regex '.*\.py[co]'`

CMD ["sh"]
