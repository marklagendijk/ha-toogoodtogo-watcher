ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG=C.UTF-8
ENV NODE_ENV production

RUN apk add --no-cache \
    tzdata \
    nodejs \
    npm

COPY package.json /
RUN cd / && npm install --unsafe-perm

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]