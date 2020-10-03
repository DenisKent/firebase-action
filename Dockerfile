FROM node:latest

# git is now required when install firebase-tools
RUN apk add --no-cache git

RUN npm install -g firebase-tools

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]