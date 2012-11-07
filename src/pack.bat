mkdir ..\dist\shadowsocks
cd ..\deps\shadowsocks-go
call win32build.bat
copy bin\local.exe ..\..\dist\shadowsocks\
cd ..\..\src
xcopy html ..\dist\shadowsocks\ /e
copy config.json ..\dist\shadowsocks\
cd ..
xcopy tools dist\shadowsocks\tools\ /e
cd dist
7z a shadowsocks.7z shadowsocks\
rd shadowsocks /s /q
cd ..\src
