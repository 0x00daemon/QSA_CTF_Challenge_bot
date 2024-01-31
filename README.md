<h1 align="center">
<br>
<a href="https://disctf.live"><img src="./images/logo_circle.png" alt="Logo" width="250px" height="250px"></a>
<br>
DisCTF
</h1>
<h3 align="center">Discord Bot for Realtime Updates from CTFd</h3>
<br>
<p align="center">
<a href="https://www.gnu.org/licenses/gpl-3.0"><img src="https://img.shields.io/badge/License-GPLv3-blue.svg" alt="License: GPL v3"></a>
<img src="https://img.shields.io/badge/build-passed-brightgreen" alt="build badge">
<img src="https://img.shields.io/badge/dependencies-up%20to%20date-066da5" alt="build badge">
<img src="https://img.shields.io/badge/python-v3.7-blue" alt="Python V3.8">
<img src="https://img.shields.io/badge/Status-up-brightgreen" alt="status-up">
<img src="https://img.shields.io/badge/issues-open-yellow" alt="Issues Open">
</p>
<br><br>

DisCTF is a Discord bot developed to connect Discord server to CTFd framework with a centralized system for real-time notifications. CTFd bot is capable of monitor real-time solves and submission and filter out valid once, sends notifications on each solves with beautiful and colorful embeds with current rank and score of the person who solved with a timestamp in it. We have a live scoreboard that notifies the people on a repeated schedule of 1 minute with ranks of the top 20 players. You can interact with CTFd framework with custom commands that are programmed to fetch particular details from server and display you the necessary Details in easy Fashion and cool look.

<br>

![Screenshot](https://aravindha1234u.github.io/DiscCTF/static/images/intro2.png)

## How Bot Works :
<br>

The bot has an interactive Dashboard page, you have to log in with Discord and add the bot to server. Once done you can configure the CTFd by providing CTF name, URL and Discord channel to use for the notifications. You are asked for admin credentials or session token and once done, just enable the bot and it will look for submissions and notify you in the provided channel. The bot is made independent of platform, submission logs are be viewed only by admin privileged user and a normal user can't view those. We have enabled few commands like /challenge which lists out active challenges. You can also filter out a specific challenge for information and if not then a particular category too. We have enabled User and Team information as well as Scoreboard Features. We are using the rest framework of Django to connect to CTFd, and if only the user account token is provided we can get the information as well. We are using REST framework because we don't want our bot to spam your CTFd server so it won't be giving you server load also. The information used to access CTFd is not stored in any database but is only used to request for specific privileges.

<br>

![Screenshot](https://aravindha1234u.github.io/assets/img/portfolio/bot1.png)

## How to Use DisCTF:

1. Clone the repository:
   * ```bash
     git clone https://github.com/0x00daemon/QSA_CTF_Challenge_bot
     ```
    
2. Install the Requirements `pip3 install -r requirements.txt`

3. Use your browser to login into CTFd and get admin session cookie and its URL path (Make sure you don't end the session)
   * For this login to CTFd using admin user.
   * Next, go to inspect and then the application tab and from the side menu select the cookie option to find the cookie information.
   * Copy the cookie value.

4. Enable [developer options](https://support.discord.com/hc/en-us/articles/206346498-Where-can-I-find-my-User-Server-Message-ID-) in discord and copy the channel ID where you want the discord notifications

5. Create a Discord bot and edit the `bot.py` file with token would be find at [Discord Developer](https://discord.com/developers/applications) ( How to create Bot account : [link](https://discordpy.readthedocs.io/en/latest/discord.html))
   * To create a discord bot visit the [Discord Developers portal](https://discord.com/developers/applications).
   * Create a new application. Give it an appropriate name.
   * Next from the side menu, click on bot section.
   * In the Bot section click on reset token to receive your unique token.

6. Update the bot token in the bot.py file:
   * Open the bot.py file and change the ```Token = None``` to ```Token = "<yourtoken>"```

7. Start the bot to monitor the CTFd:
   * ```bash
     python3 bot.py -s <session cookie> -u <url> -c <discord channel id>
     ```
   * Replace the <session cookie> with the cookie value obtained from the 2nd step
   * Replace the <url> with the url of your CTFd website.
   * Replace the <discord channel id> with the channel ID obtained from the 4th step
  
For adding DisCTF bot in your Discord Server use the link Below:

https://discord.com/api/oauth2/authorize?client_id=<your_client_id>&permissions=<yourpermissionsreq>&scope=bot

Here change the ```<your_client_id>``` with the client id of your bot which can be found in the side section ```OAuth2```.

As for the ```<yourpermissionsreq>```, I will be using ```274877974528``` which is providing the bot message sending and reading old messages permissions but I believe you may be able to get away with just the message sending permission but since I haven't tested that so don't take my word on it. As for how I got this number for the permissions, go to the bot section and in the bottom you will find the permissions portion where you can select the permissions and it will give you the decimal presentaiton of those permissions.

In the Bot section you will also need to enable the toggle options:
* PRESENCE INTENT
* SERVER MEMBERS INTENT
* MESSAGE CONTENT INTENT

Your updated link will look something like this:

https://discord.com/api/oauth2/authorize?client_id=772318209129840650&permissions=274877974528&scope=bot

Go to your updated link in the browser, follow the questionaire to add the bot to the appropriate server and the bot will join your server.

Once the bot joins your discord server you can run the disctf server now and the bot should be online indicating it worked and in the channel that was selected you should see the welcome message.

To start the server use the step 7 guidance.

If you encountar any errors like the Token error make sure the token is wrapped in double qoutations.

Make sure to give proper premission for DisCTF bot with sending and receiving message for Full functioning of Bot.

if you need to give a test run before using in your big event, you demo.ctfd.io with admin credentials. 

### Support

In case, if you need help for deploying Bot for CTF event, you can join the discord chanenl with [https://discord.gg/unB3tzuS9b](https://discord.gg/unB3tzuS9b)

For more info visit : [https://disctf.live](https://disctf.live)

### License

**DisCTF** is licensed under [GPL v3.0 license](https://www.gnu.org/licenses/gpl-3.0.en.html)
