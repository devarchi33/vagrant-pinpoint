#!/bin/bash
#로컬 타임 설정.	
	sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
        
#git 설치.
	sudo yum -y update
        sudo yum -y install git
        
#pinpoint 모듈 다운 및 설치.
	git clone https://github.com/naver/pinpoint
        sudo chown -R vagrant:vagrant pinpoint/
        wget https://s3-ap-northeast-1.amazonaws.com/devarchi33-pinpoint/JavaSet.tar
	mv JavaSet.* JavaSet.tar
        sudo chown vagrant:vagrant JavaSet.tar
        tar -xvf JavaSet.tar
        rm -rf JavaSet.tar
        mkdir scripts
        sudo chown -R vagrant:vagrant scripts/
        mv *.sh ./scripts
        sudo JavaSet/jdk-6u45-linux-x64-rpm.bin
        sudo mv /usr/java/jdk1.6.0_45 /usr/local
        sudo ln -s /usr/local/jdk1.6.0_45 /usr/local/java6
        sudo tar -xvf JavaSet/jdk-7u79-linux-x64.gz -C /usr/local
        ln -s /usr/local/jdk1.7.0_79 /usr/local/java7
        sudo tar -xvf JavaSet/jdk-8u65-linux-x64.gz -C /usr/local
        sudo ln -s /usr/local/jdk1.8.0_65 /usr/local/java8
        sudo tar -xvf JavaSet/apache-maven-3.3.9-bin.tar.gz -C /usr/local
        sudo ln -s /usr/local/apache-maven-3.3.9 /usr/local/maven3.3
        rm -rf *.rpm

#환경변수 설정.
	sudo cp /vagrant/profile /etc/profile
	source /etc/profile

#pinpoint build
	cd /home/vagrant/pinpoint && mvn install -Dmaven.test.skip=true
