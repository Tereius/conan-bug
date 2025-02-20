@ECHO off

SET CURRENT_DIR=%cd%

SET FOO_BUILD=%CURRENT_DIR%\foo_build
SET FOO_RES=%CURRENT_DIR%\foo_build\res

SET BAR_BUILD=%CURRENT_DIR%\bar_build

REM Backslash to forward slash
rem SET "FOO_BUILD=%FRAMEOUS_BUILD:\=/%"
rem SET "FRAMEOUS_ACTOR_BUILD=%FRAMEOUS_ACTOR_BUILD:\=/%"
rem SET "FRAMEOUS_OVERLAY_BUILD=%FRAMEOUS_OVERLAY_BUILD:\=/%"
rem SET "FRAMEOUS_CONTROLS_BUILD=%FRAMEOUS_CONTROLS_BUILD:\=/%"

REM --------- write layout file ---------
echo [build_folder] > foo_layout
echo %FOO_BUILD% >> foo_layout
echo [source_folder] >> foo_layout
echo ./ >> foo_layout
echo [includedirs] >> foo_layout
echo ./src >> foo_layout
echo [resdirs] >> foo_layout
echo %FOO_RES% >> foo_layout

REM --------- write layout file ---------
echo [build_folder] > bar_layout
echo %BAR_BUILD% >> bar_layout
echo [source_folder] >> bar_layout
echo ./ >> bar_layout
echo [includedirs] >> bar_layout
echo ./src >> bar_layout

call conan workspace install workspace.yml
IF ERRORLEVEL 1 goto print_error

goto:eof

:print_error
cd /D %CURRENT%
echo Project creation failed
pause
goto:eof
 
