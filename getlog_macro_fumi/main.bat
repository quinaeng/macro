@echo off

set /p INPUT="フォルダ名を入力してください："
set LOGDIR=%~dp0log\%INPUT%
set LOGDIR1=%~dp0log\%INPUT%-事後

set actionlist=%~dp0\actionlist\test.csv
for /f "tokens=1,2,3 delims=," %%a in (%actionlist%) do (
	start "" "C:\Program Files (x86)\teraterm\ttpmacro.exe" "%~dp0\macro.ttl" %%a %%b %%c %LOGDIR%
	TIMEOUT /T 2
)

set actionlist=%~dp0\actionlist\test.csv
for /f "tokens=1,2,3 delims=," %%a in (%actionlist%) do (
	start "" "C:\Program Files (x86)\teraterm\ttpmacro.exe" "%~dp0\macro.ttl" %%a %%b %%c %LOGDIR1%
	TIMEOUT /T 2
)
