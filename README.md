#vagrant-capital-maps-frontend

* CentOS 6.5
* Nginx
* npm
* bower
* compass

###Usage

 * Create soft link for [project root] to ./www:

 ```ln -s /home/user/www/capital-maps-frontend ./www```

 * Up enviroment

 ```vagrant up```

 * Open project in browser:
 
 http://maps.capital

### Requirements

 * Host unix-like OS (strongly recommended)
 * Host NFS (```sudo apt-get install -y nfs-kernel-server```)
 * Vagrant >=1.6.0
 * Vagrant hostsupdater plugin (```vagrant plugin install vagrant-hostsupdater```)
 * VirtualBox >=4.3.0
