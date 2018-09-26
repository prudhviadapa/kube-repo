FROM nginx:latest
MAINTAINER prudhviadap
COPY index.html /usr/share/nginx/html/
EXPOSE 80
