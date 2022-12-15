powershell -c "npm install yarn pm2 -g"
cd server
powershell -c "yarn"
powershell -c "pm2 start server"
