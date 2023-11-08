FROM ubuntu:20.04
LABEL owner="balaji"
RUN apt update && apt install -y nginx unzip jq curl wget
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD [ "/usr/sbin/nginx", "-g", "daemon off;" ]