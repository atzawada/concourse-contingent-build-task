FROM docker:git
MAINTAINER atzawada@gmail.com

COPY script.sh /bin/script

RUN chmod +x /bin/script

