FROM alpine:3.19

COPY files /root

USER root
RUN apk add kubectx kubectl bash --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community/
RUN apk add stern --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/
RUN rm -rf /var/cache/apk/*

ENTRYPOINT [ "/bin/bash" ]
