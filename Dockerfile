FROM node:lts AS build-stage

COPY . /app
WORKDIR /app

FROM nginx:stable AS production-stage

COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY .jenkins/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
