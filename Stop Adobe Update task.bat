:: Delete the Adobe Flash Player Update Service
net stop AdobeFlashPlayerUpdateSvc
sc delete AdobeFlashPlayerUpdateSvc

:: Delete the scheduled task Adobe installs
del /F /Q "%SystemDrive%\Windows\tasks\Adobe Flash Player Updater.job"

exit /B %EXIT_CODE%