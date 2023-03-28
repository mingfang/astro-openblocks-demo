FROM node:19

WORKDIR /app

COPY package*.json ./
RUN yarn

COPY . .
RUN yarn build

ENV NODE_ENV="production"
ENV HOST=0.0.0.0
ENV PORT=3000
CMD ["yarn", "start"]