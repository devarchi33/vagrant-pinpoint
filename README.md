1. vagrant box add pinpoint-box https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box
2. vagrant up
3. modify /etc/profile 
   	export JAVA_6_HOME=/usr/local/java6
   	export JAVA_7_HOME=/usr/local/java7
	export JAVA_8_HOME=/usr/local/java8
	export JAVA_HOME=/usr/local/java8
	export MAVEN_HOME=/usr/local/maven3.3
	export PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH
	export CLASSPATH=$CLASSPATH:$JAVA_HOME/jre/lib/ext:$JAVA_HOME/lib/tools.jar
4. cd pinpoint && mvn install -Dmaven.test.skip=true
