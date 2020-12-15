#!/bin/bash
Green='\033[0;32m'
white='\033[0;37m'
NC='\033[0m'
clear
printf '\033]2; INSTALLER\a'
echo -e "${Green}[*] Press \e[0;33many key\e[0;32m to install Android_Hack..."
read -n 1 
clear

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ "$DIR" != "/root/Android_Hack" ]]
then
	echo -e "\033[0;35m[~] I will install it for you..."
	sleep 4
	if [[ -d /root/Android_Hack ]]
	then 
		rm -r /root/Android_Hack
	fi
	mkdir /root/Android_Hack
	cp -r "$DIR"/* /root/Android_Hack
	chmod +x /root/Android_Hack/install.sh
	#gnome-terminal -- bash -c "sudo /root/bootmiester/install.sh; exec bash"
fi
echo -e "${Green}[+] Installing Android_Hack..."
sleep 1
echo -e "${Green}[+] Fixing permissions..."
sleep 2
chmod +x /root/Android_Hack/autoxploit.py
clear
echo -e "${Green}[+] Copying Tool to /bin/autoxploit"
cd /root/Android_Hack
cp /root/Android_Hack/autoxploit.py /bin/Android_Hack
clear

while true
do  
	clear
	echo -e "${Green}[*] Are you \e[0;33mu\e[0;32mpdating or \e[0;33mi\e[0;32mnstalling the script?(\e[0;33mu\e[0;32m/\e[0;33mi\e[0;32m): "
	echo -e "${Green}[#] Only use 'i' for the first time."
	read UORI
	if [[ "$UORI" = "u" ]]
	then 
		clear 
		echo -e "This feature is currently under construction.."
		sleep 3
		exit
	elif [[ "$UORI" = "i" ]]
	then 
		clear
		BASHCHECK=$(cat ~/.bashrc | grep "/bin/Android_Hack")
		if [[ "$BASHCHECK" != "" ]]
		then 
			echo -e "I SAID USE i ONLY ONE TIME..........."
			sleep 3
			break
		fi
		echo -e "${Green}[#] Adding Android_Hack to PATH so you can access it from anywhere"
		sleep 1
		export PATH=/bin/Android_Hack:$PATH
		sleep 1
		echo "export PATH=/bin/Android_Hack:$PATH" >> ~/.bashrc
		sleep 1
		clear
		break
	fi
done
sleep 1
echo -e "${Green}[#] Installation is finished. Type 'sudo Android_Hack' to launch the script after we exit."
sleep 0.5
echo -en "${Green}[+] Starting Android_Hack"; sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;sleep 0.5 ;echo -en "." ;
sudo Android_Hack


