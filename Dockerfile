FROM node:10.13-alpine
ENV NODE_ENV production \
    PORT 4500
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4500
CMD npm start