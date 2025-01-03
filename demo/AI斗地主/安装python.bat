@echo off & title Bat+Vbs 
 
set Url=https://www.python.org/ftp/python/3.8.0/python-3.8.0-amd64.exe
 
set Save=
if exist %Save% (echo 位置：%Save%) else (mkdir %Save% & echo 已创建：%Save%)
 
for %%a in ("%Url%") do set "FileName=%%~nxa"
if not defined Save set "Save=%cd%"
(echo Download Wscript.Arguments^(0^),Wscript.Arguments^(1^)
echo Sub Download^(url,target^)
echo   Const adTypeBinary = 1
echo   Const adSaveCreateOverWrite = 2
echo   Dim http,ado
echo   Set http = CreateObject^("Msxml2.ServerXMLHTTP"^)
echo   http.open "GET",url,False
echo   http.send
echo   Set ado = createobject^("Adodb.Stream"^)
echo   ado.Type = adTypeBinary
echo   ado.Open
echo   ado.Write http.responseBody
echo   ado.SaveToFile target
echo   ado.Close
echo End Sub)>DownloadFile.vbs

DownloadFile.vbs "%Url%" "%Save%\%FileName%"
::下载完删除生成的vbs文件
del DownloadFile.vbs

start python-3.8.0-amd64.exe
