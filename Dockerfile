# For Production
FROM mhart/alpine-node
WORKDIR /app
COPY /build .
COPY /buildenv .
RUN yarn 
CMD ["yarn", "p"]