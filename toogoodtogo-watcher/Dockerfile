ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache \
    tzdata \
    nodejs \
    npm

COPY rootfs /

RUN chmod a+x /run.sh
RUN cd / && npm install --unsafe-perm

ENV NODE_ENV production

CMD [ "/run.sh" ]