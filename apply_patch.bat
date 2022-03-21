call setup_patch_env.bat

del build\zerowing_hack.bin
copy build\zerowing.bin build\zerowing_hack.bin

Asm68k.exe /p /o ae+ /o c+ /o l+ src\zerowing_hack.asm, build\zerowing_hack.bin

java -jar RomMangler.jar split split_cfgs\zerowing_out_split.cfg build\zerowing_hack.bin

copy build\out\o15-11ii.bin %ROM_DIR%\zerowing\o15-11ii.bin
copy build\out\o15-12ii.bin %ROM_DIR%\zerowing\o15-12ii.bin

pause