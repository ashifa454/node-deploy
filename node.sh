#setup node application
apt-get install curl # install curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - # download node.js using curl
apt-get install nodejs # install node.js
npm install -g pm2 # install pm2 http://pm2.io
pm2 startup systemd # set pm2 to launch on every server restart
git clone https://github.com/fhinkel/nodejs-hello-world hello_world # clone a hello_world project
cd hello_world 
npm install # install project dependencies
pm2 start index.js #this line will start node application on port 80