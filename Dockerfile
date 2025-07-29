FROM node:22-alpine
#setting working directory inside container
#creste new directory in container so that it do not overwrite any directoty present in root 
WORKDIR /app                    
#creating copy from local directory to directory inside container 
COPY . .               
#u can use as many as run command this run during building of images 
RUN npm install
# RUN nmp run test
#to start the application
#it should be one only in any Docker, default command to run when container starts  
EXPOSE  5173
CMD npm run dev
# CMD ["npm", "run", "dev"]


#lets build an image in docker file
