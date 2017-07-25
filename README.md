Unofficial Adobe Flash Player removal solution by CHEF-KOCH
----------

## Project closed, [Adobe Flash is official dead](https://blogs.adobe.com/conversations/2017/07/adobe-flash-update.html).

This is an Adobe Flash Player uninstall solution especially for Windows 10 which also should remove the native support. 


Basic and official uninstaller commands:
* ActiveX Control: <code>uninstall_flash_player.exe -uninstall activex</code>
* NPAPI Plugin: <code>uninstall_flash_player.exe -uninstall plugin</code>
* Silent uninstaller: <code>uninstall_flash_player.exe -uninstall</code>


Linux only:
rpm -e flash-plugin
yum remove flash-plugin
apt-get remove flash-plugin


Official:
- Contains always the latest flash uninstaller : https://helpx.adobe.com/flash-player/kb/uninstall-flash-player-windows.html This tool will be updated after each new Adobe Flash Player release. The Problem is that it not remove the native WIndows Flash support or all of is registry detection keys.



Research:
* https://www.adobe.com/devnet/flashplayer/articles/flash_player_admin_guide.html


Todo:
- Make an all-in-one script with fallback to backup stuff. 
- Fix reported stuff, oh wait issue tracker is closed, how about to make a pull request?
 
