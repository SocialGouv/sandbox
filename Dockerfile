FROM ghcr.io/socialgouv/docker/nginx:7.1.1


ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "hello EY 🤗 #$COMMIT_SHA" > /usr/share/nginx/html/index.html
