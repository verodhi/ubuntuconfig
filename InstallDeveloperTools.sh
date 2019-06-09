#!/bin/bash

#Updating and upgrading existing programs.
echo"Updating and upgrading existing packages"
apt-get update
apt-get upgrade
apt-get clean

#Install timeshift backup
dpkg -s "timeshift" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Timeshift"
  add-apt-repository ppa:teejee2008/ppa
  apt-get update
  apt-get install timeshift
else
  echo "Timeshift already installed."
fi

#Install git
dpkg -s "git" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing git"
  apt-get install git
else
  echo "Git already installed."
fi

#Install curl
dpkg -s "curl" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing curl"
  apt install curl
else
  echo "Curl already installed."
fi

#Install NodeJS and NPM
dpkg -s "npm" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing nodejs and npm"
  apt install nodejs npm
else
  echo "Node already installed."
fi

#Install Java
#dpkg -s "java" &> /dev/null  
#if [ $? -ne 0 ]
#then
#  echo "Installing java"
#  add-apt-repository ppa:webupd8team/java
#  apt-get update
#  apt-get install oracle-java8-installer
#else
#  echo "Java already installed."
#fi

#Install VLC media player
dpkg -s "vlc" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing VLC player"
  apt-get install vlc browser-plugin-vlc
else
  echo "Vlc already installed"
fi

#Install Ubuntu Make
dpkg -s "umake" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Ubuntu Make"
  add-apt-repository ppa:lyzardking/ubuntu-make
  apt-get update
  apt-get install ubuntu-make
else
  echo "Ubuntu make already installed"
fi

#Install Visual Studio Code
dpkg -s "" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Visual Studio Code"
  umake ide visual-studio-code  
else
  echo "Visual Studio Code already installed."
fi

#Install Firefos Developer Edition
dpkg -s "firefox-dev" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Firefox Developer"
  umake web firefox-dev
else
  echo "Firefox already installed."
fi

#Install Chromium Browser
dpkg -s "chromium-browser" &> /dev/null  
if [ $? -ne 0 ]
then
  echo"Installing Chromium Browser"
  apt install chromium-browser
else
  echo "Chromium already installed."
fi

#Install Tilix
dpkg -s "tilix" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Tilix terminal"
  add-apt-repository ppa:webupd8team/terminix
  apt-get update
  apt-get install tilix
else
  echo "Tilix already installed."
fi

#Install Caffine to stop computer from sleeping
dpkg -s "caffeine" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing caffeine"
  apt-get install caffeine
else
  echo "Caffeine already installed."
fi

#Install FileZilla FTP client
dpkg -s "filezilla" &> /dev/null  
if [ $? -ne 0 ]
then
 echo "Installing filezilla"
 apt install filezilla  
else
  echo "Filezilla already installed."
fi

#Install CopyQ Clipboard management
dpkg -s "copyq" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing CopyQ"
  add-apt-repository ppa:hluk/copyq
  apt update
  apt install copyq
else
  echo "CopyQ already installed."
fi

#Install Docker
dpkg -s "docker" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing Docker CE"
  apt-get remove docker docker-engine docker.io
  apt-get update
  apt-get install apt-transport-https ca-certificates curl software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
  apt-key fingerprint 0EBFCD88
  add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
  apt-get update
  apt-get install docker-ce  
else
  echo "Docker already installed."
fi


#Install JQ
dpkg -s "jq" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing jq"
  snap install jq  
else
  echo "jq already installed."
fi

#Install kubectl
dpkg -s "kubectl" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing kubectl"
  snap install kubectl --classic
else
  echo "Kubectl already installed."
fi

#Install ruby
dpkg -s "ruby" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing ruby"
  snap install ruby
else
  echo "Ruby already installed."
fi

#Install jekyll
dpkg -s "jekyll" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing jekyll"
  apt install ruby-bundler
  apt install jekyll
else
  echo "Jekyll already installed."
fi

#Install ruby-bundler
dpkg -s "bundler" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing bundler"
  apt install ruby-bundler
else
  echo "Ruby Bundler already installed."
fi

apt-get autoremove


#Install hub for github
dpkg -s "hub" &> /dev/null  
if [ $? -ne 0 ]
then
  echo "Installing hub"
  snap install --classic hub
else
  echo "Hub already installed."
fi

apt-get autoremove