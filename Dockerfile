FROM node:0.10.35

RUN npm cache clear
RUN npm install -g yo bower grunt-cli
RUN npm install -g generator-polymer

RUN apt-get install -y ruby-sass

EXPOSE 4200 9000 35729
WORKDIR /usr/src/app
ENTRYPOINT ["/usr/local/bin/grunt"]
CMD ["--help"]
