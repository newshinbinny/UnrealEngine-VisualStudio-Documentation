@echo off
echo *********************************************************************************************************************
echo ******************************************** Clean Unreal Engine Project ********************************************
echo *********************************************************************************************************************
echo.
SET /P AREYOUSURE=Are you sure to delete all .vs, Binaries, DerivedDataCache, Intermediate, some of the Saved folders in your project and plugins (y/[N])?
IF /I "%AREYOUSURE%" NEQ "y" GOTO END
echo.
echo Cleaning your project, please wait...
rmdir /s /q ".idea", ".vs", "Binaries", "DerivedDataCache", "Intermediate", "Saved/Autosaves", "Saved/Collections", "Saved/Crashes", "Saved/Logs", "Saved/UnrealBuildTool", "Saved\Config\CrashReportClient"
echo.
echo Done!
echo.
Pause
:END