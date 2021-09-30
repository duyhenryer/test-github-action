FROM nginx

WORKDIR /app

COPY . .

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/