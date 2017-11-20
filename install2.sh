rvm install ruby-2.3.0
rvm --default use ruby-2.3.0
rvm install ruby-2.3.0-dev
gem install bundler
sudo apt-get install libxslt-dev libxml2-dev
sudo apt-get install libmysqlclient-dev
sudo apt-get install -y nodejs &&
sudo ln -sf /usr/bin/nodejs /usr/local/bin/node
sudo apt-get install -y dirmngr gnupg
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

# Add our APT repository
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

# Install Passenger + Nginx
sudo apt-get install -y nginx-extras passenger

#Stop apache if running
#sudo service apache2 stop
