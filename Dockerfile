FROM node:18-slim

WORKDIR /home/my-next-app

COPY my-next-app/package*.json /home/my-next-app/

RUN npm install

COPY . /home/

RUN npm run build

ENV PORT=3622

EXPOSE 3622

CMD ["npm", "run", "start"]

