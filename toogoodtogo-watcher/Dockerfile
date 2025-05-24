ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    tzdata \
    nodejs \
    npm

COPY rootfs /
RUN cd / && npm install --unsafe-perm

ENV NODE_ENV production

CMD [ "/run.sh" ]