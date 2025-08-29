sudo curl -o /etc/apt/keyrings/aptly.asc https://www.aptly.info/pubkey.txt
echo 'deb [signed-by=/etc/apt/keyrings/aptly.asc] http://repo.aptly.info/release noble main' | sudo tee -a /etc/apt/sources.list.d/aptly.list
sudo apt udpate
sudo apt -y install aptly aptly-api
gpg --no-default-keyring --keyring trustedkeys.gpg --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C
gpg --no-default-keyring --keyring trustedkeys.gpg --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC
