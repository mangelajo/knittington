@echo off
echo [res\windows.res] building resources...
windres res/windows.rc -O coff -o res/windows.res
rem echo [bin-win\gui_sdl12.exe] building sdl1.2 gui executable...
rem gcc -g gui/*.c lib/src/*.c res/windows.res -I lib/include/ -mwindows -lmingw32 -lsdlmain -lsdl -lsetupapi -o bin-win\gui_sdl12.exe
rem strip bin-win\gui_sdl12.exe
echo [bin-win\gui.exe] building sdl2.0 gui executable...
gcc gui/*.c lib/src/*.c res/windows.res -I lib/include/ -mwindows -lwinmm -lmingw32 -lsdl2main -lsdl2 -lsdl2.dll -lsetupapi -DSDL2 -lfreeimage -o bin-win\gui.exe
strip bin-win\gui.exe
