@echo off
echo Starting system cleanup...

echo Deleting temporary files...
del /s /q "%temp%\*.*"

echo Emptying Recycle Bin...
echo Y | PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Force"

echo Clearing browser cache for Microsoft Edge...
del /s /q "%LocalAppData%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\*.*"

echo Clearing browser cache for Google Chrome...
del /s /q "%LocalAppData%\Google\Chrome\User Data\Default\Cache\*.*"

echo Clearing browser cache for Mozilla Firefox...
for /d %%a in ("%AppData%\Mozilla\Firefox\Profiles\*") do del /s /q "%%a\cache2\entries\*.*"

echo System cleanup completed successfully.
pause
