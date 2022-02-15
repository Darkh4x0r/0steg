#!/bin/bash

echo " ███████████                                 █████████   █████                     
░█░░░░░░███                                 ███░░░░░███ ░░███                      
░     ███░    ██████  ████████   ██████    ░███    ░░░  ███████    ██████   ███████
     ███     ███░░███░░███░░███ ███░░███   ░░█████████ ░░░███░    ███░░███ ███░░███
    ███     ░███████  ░███ ░░░ ░███ ░███    ░░░░░░░░███  ░███    ░███████ ░███ ░███
  ████     █░███░░░   ░███     ░███ ░███    ███    ░███  ░███ ███░███░░░  ░███ ░███
 ███████████░░██████  █████    ░░██████    ░░█████████   ░░█████ ░░██████ ░░███████
░░░░░░░░░░░  ░░░░░░  ░░░░░      ░░░░░░      ░░░░░░░░░     ░░░░░   ░░░░░░   ░░░░░███
                                                                           ███ ░███
                                                                          ░░██████ 
                                                                           ░░░░░░  "

echo -e "\e[31mMade by D4rkhax0r\e[0m""\n"

echo " This tool is for CTF Steganography "

echo -e " Please be sure to be root before running this tool  "  

echo -e "Editing your sources.list "


echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" | sudo tee /etc/apt/sources.list
echo "deb http://http.kali.org/kali sana main non-free contrib" | sudo tee -a /etc/apt/sources.list
echo "deb http://security.kali.org/kali-security sana/updates main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb http://old.kali.org/kali moto main non-free contrib" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic-updates main restricted" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic universe" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic-updates universe" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic multiverse" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic-updates multiverse" | sudo tee -a /etc/apt/sources.list
echo "deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ bionic-backports main restricted universe multiv" | sudo tee -a /etc/apt/sources.list
echo "deb http://security.ubuntu.com/ubuntu/ bionic-security universe"| sudo tee -a /etc/apt/sources.list


sudo apt-get update  

mkdir 0steg
cd 0steg

echo -e "\e[31mInstalling Steghide\e[0m""\n"
 
sudo apt-get install steghide -y


echo -e "\e[31mInstalling Stegoveritas\e[0m""\n"

sudo apt-get -y install python3-pip
pip3 install stegoveritas
stegoveritas_install_deps


echo -e "\e[31mInstalling Binwalk\e[0m""\n"

sudo apt install binwalk
	
echo -e "\e[31mInstalling Exiftool\e[0m""\n"

sudo apt install exiftool

echo -e "\e[31mInstalling Stegsolve\e[0m""\n" 

wget "http://www.caesum.com/handbook/Stegsolve.jar" -O stegsolve.jar
chmod +x stegsolve.jar

echo -e "\e[31mInstalling Foremost\e[0m""\n"

sudo apt install foremost

echo -e "\e[31mInstalling Hexedit\e[0m""\n"

sudo apt install hexedit

echo -e "\e[31mInstalling Bless\e[0m""\n"

sudo apt-get install bless -y


echo -e "\e[31mInstalling Stegseek\e[0m""\n"

wget "https://github.com/RickdeJager/stegseek/releases/download/v0.6/stegseek_0.6-1.deb" -O stegseek.deb
chmod +x stegseek.deb
 
 sudo apt install ./stegseek.deb -y 

#echo -e "\e[31mDownloading rockyou.txt\e[0m""\n"

#wget "https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Leaked-Databases/rockyou-75.txt" -O rockyou.txt

echo -e "\e[31mInstalling Audacity\e[0m""\n"

sudo apt-get install audacity


echo -e "\e[31mSuccess \e[0m""\n"

