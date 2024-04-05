#This is a unix shell script to install Jenkins with a single command saveing manual steps and time
#Copy this to a file on any unix machine and run ./jenkins.sh from the command lline

# install java
sudo apt install openjdk-17-jre-headless -y

# install jenkins
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

