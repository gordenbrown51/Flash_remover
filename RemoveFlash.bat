net stop AdobeFlashPlayerUpdateSvc
sc delete AdobeFlashPlayerUpdateSvc
taskkill /f /im FlashUtil* /t
taskkill /f /im FlashPlayerPlugin* /t
taskkill /f /im skype.exe /t
"\\PATH-2-YOUR-FILE-SERVER\sccm_ds$\Adobe\Uninstaller\uninstall_flash_player.exe" -uninstall
wmic product where "name like 'Adobe Flash Player%%'" call uninstall /nointeractive
wmic product where "name like 'Adobe Flash Player%%'" call uninstall /nointeractive
wmic product where "name like 'Adobe Flash Player%%'" call uninstall /nointeractive
"\\PATH-2-YOUR-FILE-SERVER\sccm_ds$\Adobe\Uninstaller\CleanFlash.exe"
