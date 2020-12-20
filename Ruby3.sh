echo "Installation method from RVM"
read -r -s -p $'Press Enter to Continue...'

sudo apt-get update

echo "Installation for packages neaded"
read -r -s -p $'Press Enter to Continue...'

sudo apt install curl g++ gcc autoconf automake bison libc6-dev \
        libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool \
        libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev \
        libreadline-dev libssl-dev

echo "Gpg keys and Installation File for Linux"
read -r -s -p $'Press Enter to Continue...'

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable

echo "To Start Using RVM"

source ~/.rvm/scripts/rvm

echo "Get the List of Known Ruby Versions"
 
rvm list known

echo "Install Latest Version of Ruby"

rvm install ruby
rvm --default use ruby

echo "Run 'Ruby -v'to see the version"
exit

