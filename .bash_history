git version
java -version
clear
sudo apt-get update
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install -y fontconfig openjdk-17-jre openjdk-17-jdk
java -version
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
cd /tmp ; sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
cd /tmp ; sudo tar -xzf apache-maven-3.9.6-bin.tar.gz -C  /opt/
mv /opt/apache-maven-3.9.6 /opt/maven
sudo echo "MAVEN_HOME=\"/opt/maven\"" >> /etc/profile
sudo echo "PATH=\$MAVEN_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
cd .
cd ..
wget https://github.com/lerndevops/code/raw/main/jdk-8u331-linux-x64.tar.gz -P /tmp
wget https://github.com/lerndevops/code/raw/main/apache-tomcat-9.0.63.tar.gz -P /tmp 
wget https://get.jenkins.io/war-stable/2.332.3/jenkins.war -P /tmp
/opt/tomcat/bin/startup.sh
mv /tmp/jenkins.war /opt/tomcat/webapps/
tar -xzf /tmp/jdk-8u331-linux-x64.tar.gz -C /opt
mv /opt/jdk1.8.0_331 /opt/java
tar -xzf /tmp/apache-tomcat-9.0.63.tar.gz -C /opt
mv /opt/apache-tomcat-9.0.63 /opt/tomcat
clear
/opt/tomcat/bin/startup.sh
sudo echo "JAVA_HOME=\"/opt/java\"" >> /etc/profile 
sudo echo "PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
clear
cd /tmp ; sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
cd ..
which jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
