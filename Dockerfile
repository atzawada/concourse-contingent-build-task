FROM docker:git
MAINTAINER atzawada@gmail.com

COPY script.sh /scripts

RUN chmod +x /scripts/script.sh
