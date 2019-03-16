FROM       node:11-slim
WORKDIR    /app
COPY       package.json .
COPY       package-lock.json .
RUN        npm ci
COPY       . .
ENTRYPOINT [ "npm", "start" ]
