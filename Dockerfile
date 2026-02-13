FROM node:22-alpine

WORKDIR /app

COPY . .

RUN npm install -g @mintlify/cli@latest

EXPOSE 3000

CMD ["mintlify", "dev", "--no-open"]
