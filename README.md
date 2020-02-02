## dockerize react smart app

This is dockerize react smart app it creates docker image conatining only build 
so this is way more fast then other ways

### Step 0 for install node modules 
`yarn`

### Step 1 build react app
`yarn build`

### step 2 create a "Dockerfile" in root of your project
add the following content to it.

FROM mhart/alpine-node 
WORKDIR /var/www 
COPY /build . 
COPY /buildenv . 
RUN yarn  
CMD ["yarn", "p"]

### step 3 create .dockerignore in root of your project
add following content to it.

/node_modules
.git
.vscode    this line depends on which ide you are using


### Step 4 build Docker image
`docker build -t app-name . `

### Step 5 start appc
`docker run -it -p 8080:3000 app-name`


### to explore image in terminal 
`docker run -it app-name sh`

