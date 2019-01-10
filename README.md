### Unofficial Adobe Flash Player removal solution created by CHEF-KOCH. Latest MS provided updates (security updates only) can be found [here](http://www.catalog.update.microsoft.com/search.aspx?q=KB4103729).
----------

## Project closed, [Adobe Flash is official dead](https://blogs.adobe.com/conversations/2017/07/adobe-flash-update.html). Mirrors are provided under the [Release Tab](https://github.com/CHEF-KOCH/Flash_remover/releases).

----------

[![Twitter URL](https://img.shields.io/twitter/url/https/twitter.com/fold_left.svg?style=social&label=Follow%20%40CHEF-KOCH)](https://twitter.com/CKsTechNews)
[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/CHEF-KOCH)
[![Discord](https://discordapp.com/api/guilds/418256415874875402/widget.png)](https://discord.me/CHEF-KOCH)

This is an Adobe Flash Player uninstall solution especially for Windows 10 which also should remove the native support. 

### Instructions for Windows 10 (integrated Adobe Flash Player removal)


Packages under: `C:\Windows\servicing\Packages` in Windows 10 and note down these Adobe-Flash packages names.


```bash
Adobe-Flash-For-Windows-Package~31bf3856ad364e35~amd64….(version number of the Flash Player)
Adobe-Flash-For-Windows-WOW64-Package~31bf3856ad364e35~amd64….(version number of the Flash Player)
Adobe-Flash-For-Windows-onecoreuap-Package~31bf3856ad364e35~amd64…(version number of the Flash Player)
```

Make sure you open the registry and set the correct permissions (see pictures) to gain access. 

Prompt and execute the following via DISM:
```bash
dism /online /remove-package /packagename:Adobe-Flash-For-Windows-Package~31bf3856ad364e35~amd64-10.0.17134.1
dism /online /remove-package /packagename:Adobe-Flash-For-Windows-WOW64-Package~31bf3856ad364e35~amd64-10.0.17134.1
dism /online /remove-package /packagename:Adobe-Flash-For-Windows-onecoreuap-Package~31bf3856ad364e35~amd64-10.0.17134.1
```



### Basic and official uninstaller commands
* ActiveX Control: <code>uninstall_flash_player.exe -uninstall activex</code>
* NPAPI Plugin: <code>uninstall_flash_player.exe -uninstall plugin</code>
* Silent uninstaller: <code>uninstall_flash_player.exe -uninstall</code>


Linux only:
rpm -e flash-plugin
yum remove flash-plugin
apt-get remove flash-plugin


### Official Uninstaller
- Contains always the latest flash uninstaller: https://helpx.adobe.com/flash-player/kb/uninstall-flash-player-windows.html This tool will be updated after each new Adobe Flash Player release. The Problem is that it not remove the native WIndows Flash support or all of is registry detection keys.



Research:
* https://www.adobe.com/devnet/flashplayer/articles/flash_player_admin_guide.html
* https://helpx.adobe.com/flash-player/flash-player-releasenotes.html
