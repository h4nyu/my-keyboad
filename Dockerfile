FROM debian:stretch-slim
RUN apt-get update && apt-get install -y binutils gcc-avr avr-libc uisp avrdude flex byacc bison

WORKDIR /app
