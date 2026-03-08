FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/css/styles.css
COPY main.js /usr/share/nginx/html/js/main.js
EXPOSE 80