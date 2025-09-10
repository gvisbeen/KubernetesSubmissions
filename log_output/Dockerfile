FROM node:24-alpine3.21
LABEL authors="gvisbeen"

WORKDIR /usr/src/app

COPY ./the_project .

#ENV PORT=8080
EXPOSE ${PORT}

#ENTRYPOINT []
CMD ["node","./todo_app.js"]