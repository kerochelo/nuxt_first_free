FROM node:12.16.0-alpine

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo

WORKDIR /src

ADD . /src

RUN apk update && \
    apk upgrade && \
    npm install -g npm && \
    npm install -g @vue/cli

ENV HOST 0.0.0.0

CMD ["yarn", "dev"]
