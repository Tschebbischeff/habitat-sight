FROM bluenviron/mediamtx:latest-ffmpeg AS mediamtx
FROM alpine:latest

COPY --from=mediamtx /mediamtx /
COPY --from=mediamtx /mediamtx.yml /

RUN apk upgrade --no-cache -a; \
    apk add wget v4l-utils

COPY ./entrypoint-hook.sh /entrypoint-hook.sh
RUN chmod +x /entrypoint-hook.sh

ENTRYPOINT [ "/entrypoint-hook.sh" ]
CMD [ "/mediamtx" ]