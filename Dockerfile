FROM node
MAINTAINER Dominik Liebmann <dominik_l@gmx.net>
RUN npm install express@4.x && npm install swagger-express-middleware

ENV APP=PetStore.js \
	PORT=8000

#copy the application
COPY PetStore.js /node_modules/swagger-express-middleware/  
#copy the interface definition
COPY PetStore.yaml /node_modules/swagger-express-middleware/
#copy the welcome/test page for the petstore
COPY index.html /node_modules/swagger-express-middleware/

EXPOSE 8000

USER node

CMD /bin/bash -c "cd /node_modules/swagger-express-middleware && node $APP"
