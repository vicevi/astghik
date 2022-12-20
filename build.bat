@echo off
cd src
windres astghik.rc -o res.o
g++ *.cpp res.o -o astghik.exe -mwindows
del *.o
cd ../
if not exist bin mkdir bin
copy src\*.exe bin\*.exe
del src\*.exe