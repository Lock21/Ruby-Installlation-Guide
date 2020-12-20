# Recommended for older versions
echo "Installation method 1"
read -r -s  -p $'press enter to continue...'

sudo apt-get update

sudo apt-get install ruby-full -y

echo "Run 'ruby -v' to se the version"
read -r -s -p $'Press enter to continue...'
exit
