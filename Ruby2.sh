 # Full new version, recommended for advanced comands
 echo "Installation Method 2"
 read -r -s -p $'Press enter to continue...'

 sudo apt-get update 

 echo "Packages that need to be installed may be old or broken depending on version"
 read -f -s -p $'Press enter to continue...'

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev \
        autoconf bison build-essential libyaml-dev \
        libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

echo "Fetching Installation package from web"
read -f -s -p $'press enter to continue...'

curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

echo "Exporting Keys and architecture for bash in linux debian 9 or 10"
echo "Notice that this file can change update procedure and fail if version or key is old"
read -f -s -p $'press enter to continue...'

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

echo "Run 'rbenv -v' for version"
exit
