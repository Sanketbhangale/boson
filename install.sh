sudo apt-get update
sudo apt-get install -y curl gnupg build-essential

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDBcurl -sSL https://get.rvm.io | sudo bash -s stable
echo 'Who Am I?'
sudo usermod -a -G rvm `whoami`

if sudo grep -q secure_path /etc/sudoers; then sudo sh -c "echo export rvmsudo_secure_path=1 >> /etc/profile.d/rvm_secure_path.sh" && echo Environment variable installed; fi

echo 'Logout, come back and run install2'
