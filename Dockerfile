FROM node:20-apline

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .
ENV DATABASE_URL=postgresql://postgres:123123@localhost:5432/postgres
RUN echo ${DATABASE_URL}

RUN npx prisma migrate dev
RUN npx prisma generate
RUN npm run build

CMD ["npm", "start"]

