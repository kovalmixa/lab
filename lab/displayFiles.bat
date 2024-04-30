@echo off
chcp 65001
setlocal enabledelayedexpansion

if "%~1"=="" (
    echo Не вказан каталог.
    echo Використання %0 каталог
    exit /b 1
)

if "%~1"=="/help" goto :Help
if "%~1"=="/?" goto :Help

if not exist "%~1" (
    echo Каталог "%~1" не знайден.
    exit /b 1
)

echo Робота з каталогом: %~1
echo.

for /r "%~1" %%F in (*) do (
    echo Им'я файла/папки: %%~nxF
    echo Шлях: %%~dpF
    else (
        echo Тип: Файл
        echo Розмір файла: %%~zF байт
    )
)
exit /b 0

:Help
echo Використання %0 каталог
echo.
echo Програма виводить інформацію про файли та папки та їх атрибути у вказаному каталозі та всіх його підкаталогах.
echo.
echo Параметри:
echo     каталог     Шлях до каталогу, для якого треба вивести інформацію.
echo.
exit /b 0