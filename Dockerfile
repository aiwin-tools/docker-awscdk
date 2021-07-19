FROM python:3.9

RUN apt-get update \
    && apt-get install -y zip jq curl git \
    && rm -rf /var/lib/apt/lists/*

COPY --from=node:lts /usr/local /usr/local
COPY --from=node:lts /opt /opt

COPY --from=amazon/aws-cli /usr/local /usr/local

RUN npm install -g aws-cdk

CMD [ "cdk" ]