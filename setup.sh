#!/bin/bash
banner() {
clear
echo -e "\033[1;92m███████╗██████╗ ██╗      ██████╗ ██╗████████╗██╗  ██╗
██╔════╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝╚██╗██╔╝
███████╗██████╔╝██║     ██║   ██║██║   ██║    ╚███╔╝
╚════██║██╔═══╝ ██║     ██║   ██║██║   ██║    ██╔██╗
███████║██║     ███████╗╚██████╔╝██║   ██║   ██╔╝ ██╗
╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝"

echo -e "        \033[1;97m\033[1;41m Created by >> MrHacker-X \033[0m\033[1;91m\033[1;47m V_1.21.0 \033[0m    "

}

banner

echo
echo -e '\033[1;97m\033[1;41m ✅ All required packages are installing.... \033[0m'
echo -e '\033[1;92m'
apt-get update -y
apt-get upgrade -y
apt-get install openssh -y
apt-get install curl -y
apt-get install php -y
apt-get install python -y
pip install lolcat
apt-get install unzip -y
apt-get install openssh-server -y
printf "\e[0m\n"
echo -e '\033[1;97m\033[1;41m ✅ Setting up Environment..... \033[0m'
if [[ -d .alex ]]; then
printf ""
else
mkdir .alex
fi
if [[ -d logs ]]; then
printf ""
else
mkdir logs
fi
if [[ -e Modules.zip ]]; then
unzip -qq Modules.zip
rm Modules.zip
fi
if [[ -e .alex/ngrok ]]; then
printf ""
else
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
mv ngrok .alex
rm -rf ngrok-stable-linux-arm.zip
chmod +x .alex/ngrok
else
echo -e '\033[1;97m[\033[1;91m!\033[1;97m]\033[1;91m Error \033[1;92m "You Have To Install Ngrok Manually In Your Terminal"'
exit 1
fi
else
curl -LO https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
mv ngrok .alex
rm -rf ngrok-stable-linux-386.zip
chmod +x .alex/ngrok
else
echo -e '\033[1;97m[\033[1;91m!\033[1;97m]\033[1;91m Error \033[1;92m "You Have To Install Ngrok Manually In Your Terminal"'
exit 1
fi
fi
fi
if [[ -e .alex/loclx ]]; then
printf ""
else
archa=$(uname -a | grep -o 'arm' | head -n1)
arch2a=$(uname -a | grep -o 'Android' | head -n1)
if [[ $archa == *'arm'* ]] || [[ $arch2a == *'Android'* ]] ; then
curl -LO https://lxpdownloads.sgp1.digitaloceanspaces.com/cli/loclx-linux-arm.zip > /dev/null 2>&1
if [[ -e loclx-linux-arm.zip ]]; then
unzip loclx-linux-arm.zip > /dev/null 2>&1
mv loclx .alex
rm -rf loclx-linux-arm.zip
chmod +x .alex/loclx
else
echo -e '\033[1;97m[\033[1;91m!\033[1;97m]\033[1;91m Error \033[1;92m "You Have To Install LocalXpose Manually In Your Terminal"'
exit 1
fi
else
curl -LO https://lxpdownloads.sgp1.digitaloceanspaces.com/cli/loclx-linux-386.zip > /dev/null 2>&1 
if [[ -e loclx-linux-386.zip ]]; then
unzip loclx-linux-386.zip > /dev/null 2>&1
mv loclx .alex
rm -rf loclx-linux-386.zip
chmod +x .alex/loclx
else
echo -e '\033[1;97m[\033[1;91m!\033[1;97m]\033[1;91m Error \033[1;92m "You Have To Install LocalXpose Manually In Your Terminal"'
exit 1
fi
fi
fi
if [[ -d ~/.ssh ]]; then
printf ""
else
mkdir ~/.ssh
fi
chmod +x sploitx.sh
printf "|1|SVjtt9mtL4P/5lsqaielF1pJHvM=|6QmJXxfPd9A5uUaFI1RV2H4brTs= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lJnhW1oCXuAYV9IBdcJA+Vx7AHL5S/ZQvV2fhceOAPgO2kNQZla6xvUwoE4iw8lYu3zoE1KtieCU9yInWOVI6W/wFaT/ETH1tn55T2FVsK/zaxPiHZVJGLPPdEEid0vS2p1JDfc9onZ0pNSHLl1QusIOeMUyZ2bUMMLLgw46KOT9S3s/LmxgoJ3PocVUn5rVXz/Dng7Y8jYNe4IFrZOAUsi7hNBa+OYja6ceefpDvNDEJ1BdhbYfGolBdNA7f+FNl0kfaWru4Cblr843wBe2ckO/sNqgeAMXO/qH+SSgQxUXF2AgAw+TGp3yCIyYoOPvOgvcPsQziJLmDbUuQpnH\n|1|PiraXMKgzzt9DdPRSLAtRvRad0Y=|2W162QXfHJvKKZWIaRyZO6VFWJI= ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3lJnhW1oCXuAYV9IBdcJA+Vx7AHL5S/ZQvV2fhceOAPgO2kNQZla6xvUwoE4iw8lYu3zoE1KtieCU9yInWOVI6W/wFaT/ETH1tn55T2FVsK/zaxPiHZVJGLPPdEEid0vS2p1JDfc9onZ0pNSHLl1QusIOeMUyZ2bUMMLLgw46KOT9S3s/LmxgoJ3PocVUn5rVXz/Dng7Y8jYNe4IFrZOAUsi7hNBa+OYja6ceefpDvNDEJ1BdhbYfGolBdNA7f+FNl0kfaWru4Cblr843wBe2ckO/sNqgeAMXO/qH+SSgQxUXF2AgAw+TGp3yCIyYoOPvOgvcPsQziJLmDbUuQpnH\n" > ~/.ssh/known_hosts
echo -e '\n\033[;91m[\033[1;97m#\033[1;91m]\033[1;94m Setup is Completed \033[0m'
sleep 1.5
clear
echo -e '\033[1;92mLaunching SploitX.....'
sleep 1.5
bash sploitx.sh
