# Pull down a Jekyll base image (which uses ruby:2.7.1-alpine3.11)

# dev-stage
FROM jekyll/jekyll:4.0
MAINTAINER "Joel Murphy <joel@keepaliveit.co.uk>"

# Clear existing entrypoint from parent image.
ENTRYPOINT []

RUN npm install --global gulp-cli

WORKDIR /srv
VOLUME /srv

ENV LC_ALL=C.UTF-8 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

EXPOSE 3000

RUN mkdir .jekyll-cache/

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]