# Sploit
## Legal disclaimer:
+ Usage of SocialPhish for attacking targets without prior mutual consent is illegal. It's the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

## Overview
+ SploitX is a tool for testing and promoting user awareness by simulating real world phishing attacks. It features an easy to use, yet very flexible architecture allowing full control over both emails and server content. SploitX can be used to run campaigns ranging from simple awareness training to more complicated scenarios in which user aware content is served for harvesting credentials.

+ King Phisher is only to be used for legal applications when the explicit permission of the targeted organization has been obtained.

+ Get the latest stable version from the GitHub Releases Page or use git to checkout the project from source.

## Feature Overview
+ Run multiple phishing campaigns simultaneously
+ Send email with embedded images for a more legitimate appearance
+ Optional Two-Factor authentication
+ Credential harvesting from landing pages
+ SMS alerts regarding campaign status
+ Web page cloning capabilities
+ Integrated Sender Policy Framework (SPF) checks
+ Geo location of phishing visitors
+ Send email with calendar invitations
+ Plugins
+ Both the client and server can be extended with functionality provided by plugins. A small number of plugins are packaged with King Phisher and additional ones are available in the Plugins repository.

## Usages:
```
git clone https://github.com/MrHacker-X/SploitX.git/
cd SploitX
chmod +x *
bash sploitx.sh
```



## Screenshots:
![photo](https:./github.com/MrHacker-X/SploitX/img/1.jpg/)

### Template Files
+ Template files for both messages and server pages can be found in the separate King Phisher Templates repository. Any contributions regarding templates should also be submitted via a pull request to the templates repository.

### Documentation
+ Documentation for users of the application is provided on the project's wiki page. This includes steps to help new users get started with their first campaigns. Additional technical documentation intended for developers is kept seperate as outlined in section below.

### Code Documentation
+ King Phisher uses Sphinx for internal technical documentation. This documentation can be generated from source with the command sphinx-build -b html docs/source docs/html. The latest documentation is kindly hosted on ReadTheDocs at king-phisher.readthedocs.io.

### Message Template Variables
+ The client message templates are formatted using the Jinja2 templating engine and support a number of variables. These are included here as a reference, check the templates wiki page for comprehensive documentation.

<h3><b><i>📡 Connect with us :</i></b></h3>
<a href="https://github.com/MrHacker-X/"><img align="left" title="Github" alt="Github" width="30px" src="https://raw.githubusercontent.com/MrHacker-X/MrHacker-X/main/assets/github.png" /></a>
<a href="https://instagram.com/mrhacker.x/"><img align="left" title="Instagram" alt="Instagram" width="30px" src="https://github.com/MrHacker-X/MrHacker-X/blob/main/assets/instagram.png" /></a>
<a href="https://t.me/mrhackersx/"><img align="left" title="Telegram" alt="Telegram" width="30px" src="https://github.com/MrHacker-X/MrHacker-X/blob/main/assets/telegram.png" /></a>
<a href="https://youtube.com/c/MrAlexxx/"><img align="left" title="YouTube" alt="YouTube" width="30px" src="https://github.com/MrHacker-X/MrHacker-X/blob/main/assets/youtube.png" /></a> 
