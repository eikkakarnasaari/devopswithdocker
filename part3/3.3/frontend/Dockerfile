FROM node:16

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install

RUN npm run build

RUN npm install -g serve

RUN useradd -m appuser

RUN chown appuser /usr/src/app

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]