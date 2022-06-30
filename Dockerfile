FROM mcr.microsoft.com/playwright

RUN mkdir /app
WORKDIR /app

RUN npm install @playwright/test
RUN npx playwright install

CMD ["npm", "run", "test"]