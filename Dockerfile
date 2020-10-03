FROM timbru31/node-alpine-git
# git is required when install firebase-tools


RUN npm install -g firebase-tools

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]