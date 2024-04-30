@echo off
chcp 65001
mkdir Лабораторні
cd Лабораторні
mkdir ПЗ-23-1
cd ПЗ-23-1
mkdir КовальчукМС
cd КовальчукМС
mkdir batch
cd batch
mkdir Прихована_папка
mkdir Неприхована_папка
attrib +h Прихована_папка
cd Неприхована_папка
help xcopy > copyhelp.txt
xcopy copyhelp.txt ..
cd ..
move copyhelp.txt Прихована_папка
cd Прихована_папка
ren copyhelp.txt copied_copyhelp.txt