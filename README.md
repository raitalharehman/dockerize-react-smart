## dockerize react smart app

This is dockerize react smart app it creates docker image conatining only build 
so this is way more fast then other ways

### Step 0 for install node modules 
`yarn`

### Step 1 build react app
`yarn build`

### Step 2 build Docker image
`docker build -t app-name . `

### Step 3 start app
`docker run -it -p 8080:3000 app-name`


### to explore image in terminal 
`docker run -it image_name sh`

