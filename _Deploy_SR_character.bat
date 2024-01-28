echo off

REM ---------- Edit these variables as needed. --------------------------------

REM 	Set the character name, which is used for directory names and stuff.
set "charname=Desi-SR_Sosiggun_Soren"

REM ---------- No user-editable variables below. ------------------------------

REM	Ask for new version number, which is used to find-replace in files.
set /p ver="Enter a new version number: "



REM	Copy target files to temporary folder.
if exist "temp\" rmdir "temp" /s /q
if not exist "temp\" mkdir "temp\"
robocopy src\ temp\ /s


REM	Do recursive replacement of '{{ ver }}' with new version number.
REM     Needs 'rpl' from <http://gnuwin32.sourceforge.net/packages/rpl.htm>
rpl -R -x".md" -x".json" -q "{{ ver }}" %ver% temp

REM Update the readme in the root
robocopy temp\ .\ README.md

REM	Do the final zipping.
if not exist "distrib\" mkdir "distrib\"
if exist "distrib\%charname%-%ver%.zip" del distrib\%charname%-%ver%.zip
7z a -tzip -r- distrib\%charname%-%ver%.zip .\temp\*

REM	Delete the temporary folder and announce success
REM	Wait for a second to wait for the processes to finish.
timeout /t 1 /nobreak
if exist "temp\" rmdir "temp" /s /q

echo.
echo Version v%ver% of %charname% was built.
echo The Thunderstore distributable is at 'distrib/%charname%-%ver%.zip'.
echo.

PAUSE
