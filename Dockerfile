FROM docker:git
MAINTAINER atzawada@gmail.com

COPY script.sh /bin/script
COPY build.sh /bin/build

RUN chmod +x /bin/script
RUN chmod +X /bin/build
