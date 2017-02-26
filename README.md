# swagger-mock
Docker container mocking APIs based on swagger (YAML) file
Creates a mock server as docker container based on an API definition. The API definition must be described in swagger (YAML). The mock server has an in-memory data storage. It saves all posted/deleted data in memory. It also generates IDs for newly created objects.
The Mock server is based on https://github.com/BigstickCarpet/swagger-express-middleware

# Installation
Three files are necessary:
* PetStore.js - The Application file defining the server port, the API definition file and the node modules
* PetStore.yaml - The API definition
* index.html - An optional test page (defined in PetStore.yaml)

Just update the three files and run

docker build -t \<myimage> .

and

docker run --name \<mycontainer> -P \<myimage>

Your mock server will be available on http://\<docker_host_ip>:8000
