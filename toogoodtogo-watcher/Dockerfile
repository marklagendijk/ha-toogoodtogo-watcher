ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apk add --no-cache \
    tzdata \
    nodejs \
    npm

COPY rootfs /
RUN cd / && npm install --unsafe-perm

ENV NODE_ENV production

ENTRYPOINT [ "/sbin/tini", "--", "/docker-entrypoint.sh"]