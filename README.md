1. vagrant box add pinpoint-box https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box
2. vagrant up
3. vagrant ssh
4. cd /home/vagrant/pinpoint && mvn clean install -Dmaven.test.skip=true
5. cd pinpoint/quickstart/bin
6. ./start-hbase.sh
7. ./init-hbase.sh (최초 1회)
8. ./start-collector.sh
9. ./start-web.sh
10. ./start-testapp.sh
11. WEB UI: localhost:28080
12. TestApp: localhost:28081
