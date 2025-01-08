FROM node:21-slim
WORKDIR /home/node
COPY ./ ./
RUN npm -y install
EXPOSE 3000
CMD ["npm", "run", "start"]
