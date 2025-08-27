FROM node:24-alpine3.21
LABEL authors="gvisbeen"

WORKDIR /usr/src/app

COPY ../todo_app.js ./todo_app.js

#ENTRYPOINT []
CMD ["node","--env-file=.env","./todo_app.js"]