@echo off
title MGR RedM Server Cache Cleaner
echo ======================================
echo RedM Server Cache is being cleared...
echo ======================================

set CACHE_PATH="SET HERE YOUR SERVER CACHE PATCH e.g. C:\redm-server\txData\RexshackRedMBuild_E8BF90.base\cache"

if exist "%CACHE_PATH%" (
    echo clearing Cache from destination "%CACHE_PATH%" ...
    rmdir /s /q "%CACHE_PATH%"
    mkdir "%CACHE_PATH%"
    echo Cache succsessfully deleted!
) else (
    echo Cache-Folder was not found!
)

echo.
pause