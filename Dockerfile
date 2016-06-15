FROM alpine

RUN apk add --update py-pip ffmpeg ca-certificates

COPY mumbledj.tgz mumbledj.tgz

RUN tar xzf mumbledj.tgz && rm mumbledj.tgz

RUN pip install --upgrade youtube_dl

VOLUME ["/root/.mumbledj"]

CMD ["/bin/sh"]

