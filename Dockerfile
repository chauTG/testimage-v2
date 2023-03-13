FROM node:14-alpine

RUN apk add --no-cache git
RUN npm install -g typescript
RUN npm install -g ts-node
RUN npm install -g ts-node-dev

# nest
RUN npm install -g @nestjs/cli

WORKDIR /messenger

COPY . .

EXPOSE 5000 50051

RUN yarn --production

RUN yarn build

RUN rm -R src .github .gh-build .env-template .docker .dh-build .cdk8s

CMD yarn start:prod
