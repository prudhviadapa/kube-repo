FROM nginx:latest
   MAINTAINER prudhviadapa
   COPY index.html /usr/share/nginx/html/
   EXPOSE 80
