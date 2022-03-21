call setup_patch_env.bat

del build\zerowing_hack.bin
copy build\zerowing.bin build\zerowing_hack.bin

Asm68k.exe /p /o ae+ /o c+ /o l+ src\zerowing_hack.asm, build\zerowing_hack.bin

java -jar RomMangler.jar split split_cfgs\zerowing_out_split.cfg build\zerowing_hack.bin

ROM_LOAD16_BYTE,build\out\o15-11ii.bin,000000,08000
ROM_LOAD16_BYTE,build\out\o15-12ii.bin,000001,08000

copy build\out\o15-11ii.bin %ROM_DIR%\zerowing\o15-11ii.bin
copy build\out\o15-12ii.bin %ROM_DIR%\zerowing\o15-12ii.bin

pause