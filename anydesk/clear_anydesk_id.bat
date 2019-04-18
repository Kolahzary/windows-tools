@echo off
echo Removing anydesk configuration files

pause

del %programdata%\AnyDesk\service.conf
del %programdata%\AnyDesk\system.conf
del %programdata%\AnyDesk\ad_svc.trace

echo -----------------------------------
echo If you see any errors, try running this script as administrator

pause
