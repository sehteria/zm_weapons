set GAME_FOLDER=C:\Program Files (x86)\Steam\steamapps\common\Call of Duty Black Ops II
set OAT_BASE=C:\OAT
set MOD_BASE=%cd%
"%OAT_BASE%\linker.exe" ^
-v ^
--load "%GAME_FOLDER%\zone\all\zm_transit.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_prison.ff" ^
--load "%GAME_FOLDER%\zone\all\zm_tomb.ff" ^
--base-folder "%OAT_BASE%" ^
--asset-search-path "%MOD_BASE%" ^
--source-search-path "%MOD_BASE%\zone_source" ^
--output-folder "%MOD_BASE%\zone" ^ mod

if %ERRORLEVEL% NEQ 0 pause

set err=%ERRORLEVEL%

if %err% EQU 0 (
XCOPY "%MOD_BASE%\zone\mod.ff" "%LOCALAPPDATA%\Plutonium\storage\t6\mods\zm_weapons\mod.ff" /Y
XCOPY "%MOD_BASE%\mod.iwd" "%LOCALAPPDATA%\Plutonium\storage\t6\mods\zm_weapons\mod.iwd" /Y
XCOPY "%MOD_BASE%\zone\mod.all.sabl" "%LOCALAPPDATA%\Plutonium\storage\t6\mods\zm_weapons\mod.all.sabl" /Y
XCOPY "%MOD_BASE%\mod.json" "%LOCALAPPDATA%\Plutonium\storage\t6\mods\zm_weapons\mod.json" /Y
) ELSE (
COLOR C
echo FAIL!
)

pause