!#/bin/bash


sudo apt-got update
sudo apt-get -y install nginx
systemctl start nginx
echo "NGINX IS RUNNING"
sleep 1

if [[ systemctl is-active nginx ]]
then
mkdir /var/ww/html/labs
chown $USER:root /var/www/html/labs

ln -s /var/www/html/labs htmal

cd html
touch index.html

echo "<html><body><h1>HELLO</h1></body></html>" >> index.html

else
echo "error"
exit 1 

fi
