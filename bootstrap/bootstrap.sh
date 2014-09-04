sudo yum clean all;

# epel, remi
sudo wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
sudo wget http://rpms.famillecollet.com/enterprise/remi-release-6.rpm;
sudo rpm -ivh epel-release-6-8.noarch.rpm remi-release-6.rpm;
sudo rm epel-release-6-8.noarch.rpm remi-release-6.rpm;

sudo yum update -y;

# config with enabled remi
sudo rm /etc/yum.repos.d/remi.repo;
sudo cp /bootstrap/etc/yum.repos.d/remi.repo /etc/yum.repos.d/remi.repo;

# config epel
sudo rm /etc/yum.repos.d/epel.repo;
sudo cp /bootstrap/etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo;

# nano
sudo yum install nano -y;

# git
sudo yum install git -y;

# nginx
sudo yum install nginx -y;

# nginx
sudo rm /etc/nginx/conf.d/default.conf;
sudo cp /bootstrap/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf;

# npm
sudo yum install npm -y;

# grunt
sudo npm install -g grunt-cli;

# bower
sudo npm install -g bower;

# ruby
sudo yum install ruby -y;
sudo yum install rubygems -y;
sudo yum install ruby-devel -y;
sudo gem update --system;

# compass
sudo gem install compass;

# nginx start
sudo service nginx start;

# autostart 
sudo chkconfig nginx on;
