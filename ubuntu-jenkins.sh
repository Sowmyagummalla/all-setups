#STEP-1: INSTALLING GIT JAVA-1.8.0 MAVEN 
sudo apt-get update
apt install git maven -y
sudo apt-get install openjdk-8-jdk

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > redhat)
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#STEP-3: DOWNLOAD JAVA AND JENKINS
sudo apt install fontconfig openjdk-17-jre -y
java -version
openjdk version "17.0.8" 2023-07-18 -y
OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1) -y
OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)
sudo apt-get install jenkins -y
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl status jenkins.service
