FROM debian:stable
RUN apt update && \
    apt -y install procps nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
COPY www /var/
EXPOSE 80
