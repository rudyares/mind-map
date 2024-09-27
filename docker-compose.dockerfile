FROM ghcr.io/rudyares/node:20-alpine

WORKDIR /app
COPY . .

RUN cd ./simple-mind-map && npm install && npm link && cd ../web && npm install && npm link simple-mind-map

WORKDIR /app/web

CMD ["npm", "run", "serve"]