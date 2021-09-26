FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p C:/Users/brind/Course materials/Fall21/DS/Project/DS-project

COPY ./app C:/Users/brind/Course materials/Fall21/DS/Project/DS-project/

# set default dir so that next commands executes in C:/Users/brind/Course materials/Fall21/DS/Project/DS-project dir
WORKDIR C:/Users/brind/Course materials/Fall21/DS/Project/DS-project/

# will execute npm install in C:/Users/brind/Course materials/Fall21/DS/Project/DS-project because of WORKDIR
RUN npm install

# no need for C:/Users/brind/Course materials/Fall21/DS/Project/DS-project/server.js because of WORKDIR
CMD ["node", "server.js"]

