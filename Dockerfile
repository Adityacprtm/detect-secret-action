FROM        python:3.7.12-alpine3.15
ENV         INPUT_BASELINE_FILE=".secrets.baseline"
RUN         apk add --no-cache git less openssh jq bash diffutils && pip install detect-secrets==1.1.0
COPY        entrypoint.sh /entrypoint.sh
ENTRYPOINT  ["/entrypoint.sh"]