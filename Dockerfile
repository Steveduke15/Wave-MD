
FROM node:lts-buster

RUN git clone https://github.com/Kyle6012/Wave-MD.git

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*
 
COPY package.json

RUN npm install


CMD ["npm", "start"]