# what image the app is going to run on
FROM node:13-alpine

# ENV MONGO_DB_USERNAME=admin \
#     MONGO_DB_PWD=password

# create a directory for the app
RUN mkdir -p /home/app

# copy our app directory, relative to location of Dockerfile), to /home/app inside the container filesystem
COPY ./app /home/app

# set default directory so that commands after this execute in /home/app dir
WORKDIR /home/app

# run npm install to install dependencies inside /home/app dir
RUN npm install

# start the app
CMD ["node", "server.js"]
