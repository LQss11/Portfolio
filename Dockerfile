FROM nginx:alpine

LABEL maintainer="affessalem@hotmail.fr"
LABEL part-of="personal-website"
LABEL component="front"
LABEL language="native-web"

USER root

# Set working directory to nginx asset directory
WORKDIR /usr/share/nginx/html
# Remove default nginx static assets
RUN rm -rf ./*
# Use dist files
COPY /src .
