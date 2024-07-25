FROM ubuntu:24.04
RUN apt-get -q update && apt-get install -qy \
    build-essential \
    make \
    git \
    wget
RUN umask
RUN wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-linux.tar.bz2 \
    | tar -xj -C /opt || true
ENV PATH="/opt/gcc-arm-none-eabi-7-2018-q2-update/bin:${PATH}"
