# Define the base image
FROM debian:bullseye

RUN mkdir /app
RUN apt-get update && apt-get install -y curl gnupg2
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN node --version
RUN npm --version

WORKDIR /app
COPY app.js .

EXPOSE 80
CMD [ "node", "app.js" ]
