cd %~dp0

@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

cpack gae-go\gae-go.nuspec
cinst -y -s "http://chocolatey.org/api/v2/;%cd%" packages.config

pause
