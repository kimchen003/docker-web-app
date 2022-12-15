docker build . -t kim233/node-web-app
docker run -p 49160:8080 -d kim233/node-web-app