powershell -c "docker stop myserver"
powershell -c "docker rm myserver"
powershell -c "docker rmi nodejs-server"
curl.exe -o ./docker-container/node-web-app.tar -LO https://www.html6er.com/download/node-web-app.tar
powershell -c "docker import docker-container/node-web-app.tar nodejs-server"
powershell -c "docker run -p 49188:8080 --name myserver -it nodejs-server /bin/bash -c 'cd /usr/src/app && node server.js'"