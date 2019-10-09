FROM node:alpine

RUN apk update && apk add bash tzdata \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

EXPOSE 3002

ENTRYPOINT ["npm", "run"]
CMD ["deploy"]