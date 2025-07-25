FROM node:lts-buster
RUN git clone https://github.com/lafouine22/ANYA-MD/root/lafouine22
WORKDIR /root/lafouine22
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
