# pull the official base image  
FROM node:13.12.0-alpine  
 
# set your working directory  
WORKDIR /react-front-end  
 
# add `/app/node_modules/.bin` to $PATH  
ENV PATH /react-front-end/node_modules/.bin:$PATH  
 
# install application dependencies  
COPY package.json ./  
COPY package-lock.json ./
RUN npm install 
RUN npm install react-scripts -g  
RUN npm install react
RUN npm install react-dom
RUN npm install web-vitals
 
# add app  
COPY . ./  

EXPOSE 3000
 
# will start app  
CMD ["npm", "run", "client"] 