FROM node:14.15.4-alpine
RUN mkdir /root/workspace
WORKDIR /root/workspace
COPY package.json .
RUN npm install
CMD ["sleep 3000"]