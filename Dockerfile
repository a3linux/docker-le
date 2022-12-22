FROM certbot/certbot:latest

RUN apk update && apk add --no-cache --upgrade docker bash coreutils grep
ADD start.sh /bin/start.sh

ENTRYPOINT [ "/bin/bash", "/bin/start.sh" ]
