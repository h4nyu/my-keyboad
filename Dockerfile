FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y \
    binutils \
    gcc-avr \
    avr-libc \
    uisp \
    avrdude \
    flex \
    byacc \
    bison \
    make \
    python3-minimal \
    python3-pip \
    git \
    sudo
RUN pip3 install qmk \
    && qmk setup -y
    



WORKDIR /app
