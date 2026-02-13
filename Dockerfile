FROM node:22-alpine

WORKDIR /app

COPY docs.json ./
COPY favicon.svg ./
COPY logo/ ./logo/
COPY snippets/ ./snippets/
COPY images/ ./images/
COPY introduction.mdx ./
COPY troubleshooting.mdx ./
COPY faq.mdx ./
COPY getting-started/ ./getting-started/
COPY features/ ./features/
COPY administration/ ./administration/
COPY integrations/ ./integrations/
COPY portals/ ./portals/
COPY white-label/ ./white-label/

RUN npm install -g @mintlify/cli@latest

EXPOSE 3000

CMD ["mintlify", "dev", "--no-open"]
