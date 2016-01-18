1. vagrant box add pinpoint-box https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box
2. vagrant up
3. vagrant ssh
4. cd /home/vagrant/pinpoint && mvn clean install -Dmaven.test.skip=true
5. start-hbase.sh
6. init-hbase.sh (최초 1회)
7. start-collector.sh
8. start-web.sh
9. start-testapp.sh
10. WEB UI: localhost:28080
11. TestApp: localhost:28081
