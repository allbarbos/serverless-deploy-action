FROM node:lts-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/allbarbos/serverless-deploy-action"
LABEL homepage="https://github.com/allbarbos/serverless-deploy-action"
LABEL maintainer="Allbarbos <allbarbos13@gmail.com>"

LABEL "com.github.actions.name"="Serverless Deploy"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"

RUN npm i -g serverless@1.72.0 serverless-offline@6.3.2
ENTRYPOINT ["serverless"]
