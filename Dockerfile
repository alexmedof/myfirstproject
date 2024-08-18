FROM debian:stable
RUN apt update && apt -y install procps nginx
COPY . /var/
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
