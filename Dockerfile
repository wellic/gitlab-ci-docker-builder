FROM docker:18.06

ENV PATH "/app/bin:${PATH}"

RUN apk add --no-cache bash curl jq python py-pip && pip install -U pip && pip install awscli

COPY ./app /app

CMD ["bash"]
