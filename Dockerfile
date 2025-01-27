ARG GIT_REV="unknown"
FROM php
ARG GIT_REV

WORKDIR /app
ADD public/ public/

RUN echo $GIT_REV | tee git_rev

ENV PHP_CLI_SERVER_WORKERS=4
CMD [ "php", "-S", "0.0.0.0:8080", "-t", "public/" ]
