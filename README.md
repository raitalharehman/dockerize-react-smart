## dockerize react smart app

This is dockerize react smart app it creates docker image conatining only build
so this is way more fast then other ways

### Step 0 for install node modules

`yarn`

### Step 1 build react app

`yarn build`

### Step 2 build Docker image

`docker build -t app-name .`

### Step 3 start app

`docker run -it -p 8080:3000 app-name`

## If don't want to clone this repo or you want to dockerize your existing react app for production please follow the below guide.

### Step 0 for install node modules

`yarn`

### Step 1 build react app

`yarn build`

### Step 2 create a "Dockerfile" in root of your project directory

Add the following content to it.

`FROM mhart/alpine-node`  
`WORKDIR /app`  
`COPY /build .`  
`COPY /buildenv .`  
`RUN yarn`  
`CMD ["yarn", "p"]`

### Step 3 create a folder with name "buildenv" and add "package.json" file to it

In this file add the following content to it.

`{`  
 `"dependencies": {`  
 `"serve": "^11.1.0"`  
 `},`  
 `"scripts": {`  
 `"p": "serve -s . -l 3000"`  
 `},`  
 `"license": "UNLICENSED"`  
`}`

### Step 4 create .dockerignore in root of your project

Add following content to it.

`/node_modules`  
`.git`  
`.vscode` this line depends on which ide you are using

### Step 5 build Docker image

`docker build -t app-name .`

### Step 6 start app

`docker run -it -p 8080:3000 app-name`

### To explore your docker image (created above) in terminal use below command

`docker run -it app-name sh`
