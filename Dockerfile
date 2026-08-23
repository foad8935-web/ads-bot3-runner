FROM node:22-bookworm

WORKDIR /app

COPY package*.json ./
RUN npm install

# تثبيت متصفح Playwright مع كامل التبعات النظامية
RUN npx playwright install chromium --with-deps

COPY . .

CMD ["node", "--expose-gc", "publisher.js"]
