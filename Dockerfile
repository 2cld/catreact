FROM node:14-alpine as prodbuild
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=prodbuild /app/build /usr/share/nginx/html