!#/bin/bash


sudo apt-got update
sudo apt-get -y install nginx
systemctl start nginx
echo "NGINX IS RUNNING"
sleep 1

if [[ systemctl is-active nginx ]]
then
sudo mkdir /var/ww/html/labs
sudo chown $USER:root /var/www/html/labs

ln -s /var/www/html/labs htmal

cd html
touch index.html

echo "<html>
<body>
<h1>hello</h1>
<div>
<p>In this the STUDENT INFOTMATION:</p>
<ul>
  <li>Initails: OM THETSWE</li>
  <li>Name: OARABILE MACBETH THETSWE</li>
  <li>Student No: 221673180 /li>
  <li>Course: Electrical Engineering - Computer Systems</li>
</ul>
</div>
</body>
</html>" >> index.html

else
echo "error"
exit 1 

fi
