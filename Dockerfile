FROM mcr.microsoft.com/playwright

RUN mkdir /app
WORKDIR /app

RUN npm install @playwright/test
RUN npx playwright install
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]