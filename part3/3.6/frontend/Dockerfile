FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY . .

RUN npm install && npm run build


FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/src/app

ENV REACT_APP_BACKEND_URL=http://localhost:8080

COPY --from=build-stage /usr/src/app/build ./build

RUN npm install -g serve && \
    adduser -D appuser && \
    chown appuser /usr/src/app

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]