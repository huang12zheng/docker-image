FROM node:14.15.4-apline
RUN mkdir /root/workspace
WORKDIR /root/workspace
COPY package.json .
RUN npm install
CMD ["sleep 3000"]