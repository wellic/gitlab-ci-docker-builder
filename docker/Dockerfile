FROM docker:18.06

RUN apk add --no-cache bash curl jq python py-pip \
 && pip install -U pip && pip install awscli

ENV PATH "/app/bin:${PATH}"

COPY ./app /app

CMD ["bash"]
