
# Table of Content

- [Table of Content](#table-of-content)
  - [Unreal can create your project from](#unreal-can-create-your-project-from)
  - [Safe to delete:](#safe-to-delete)
    - [Clean Project directory using batch File](#clean-project-directory-using-batch-file)
  - [Error code (Use Ctrl+F)](#error-code-use-ctrlf)
    - [MSB3073 code 6](#msb3073-code-6)
    - [MSB3073 code 8](#msb3073-code-8)
    - [MSB3073](#msb3073)
    - [E0070](#e0070)
    - [E1696 cannot open source file](#e1696-cannot-open-source-file)

## Unreal can create your project from

- Config
- Content
- Plugins (if you use plugins)
- Source (if C++ files are present)
- *.uproject

so these are the folders/files to keep

## Safe to delete:

- .vs
- Binaries
- Build
- Intermediate
- Saved/Autosaves
- Saved/Collections
- Saved/Cooked
- Saved/Crashes
- Saved/Logs
- Saved/MaterialStats
- Saved/MaterialStatsDebug
- Saved/Shaders
- Saved/StagedBuilds
- Saved/Temp
- Saved/webcache_4147
- Saved/ .tmp files

[UE项目最佳实践：目录结构与常用脚本 - 知乎](https://zhuanlan.zhihu.com/p/7406207435)

[项目结构详解：关键文件与设置管理-CSDN博客](https://blog.csdn.net/qq_39934403/article/details/125525862)

[Unreal Engine项目目录结构\_虚幻 工程目录结构-CSDN博客](https://blog.csdn.net/Jason6620/article/details/128398610)

[Folders safe to delete to recompile everything - Programming & Scripting / Blueprint - Epic Developer Community Forums](https://forums.unrealengine.com/t/folders-safe-to-delete-to-recompile-everything/669919/1)

[Unreal Engine 若遇到專案異常，不管重新開啟專案、重新開機，都沒辦法解決怎麼辦？Unreal Engine 專案 Rebuild](https://www.apollo.tw/2024/01/how-to-rebuild-unreal-engine-project.html)

[Can i delete the intermediate folder? : r/unrealengine](https://www.reddit.com/r/unrealengine/comments/9xaiix/can_i_delete_the_intermediate_folder/)

### Clean Project directory using batch File

```bat
@echo off
cd %~dp0
rmdir /s /q ".idea", ".vs", "Binaries", "DerivedDataCache", "Intermediate", "Saved/Autosaves", "Saved/Collections", "Saved/Crashes", "Saved/Logs", "Saved/UnrealBuildTool", "Saved\Config\CrashReportClient"
del /q /f .vsconfig, MySolution.sln
echo All files are deleted successfully.
pause
```
Here's a breakdown of the commands:

- @echo off: Disables the display of each command in the batch file while it's running.

- cd %~dp0: Changes the current directory to the location of the batch file using the %~dp0 variable.

- rmdir /s /q ".MyGames": Removes the ".MyGames" folder and its contents. The /s option removes all files and subdirectories, and the /q option does it quietly without prompting for confirmation.

- del /q /f *.txt: Deletes all files with a ".txt" extension in the current directory. The /q option makes it quiet, and the /f option forces deleting read-only files.

- echo Folder ".MyGames" deleted successfully.: Displays a message indicating that the folder has been deleted.

- pause: Keeps the command prompt window open after execution, so you can see the result. You can remove this line if you don't want the window to stay open.

As you can see from the above explanation:

**rmdir** command deletes directories there is example for nested directory "Saved/Autosaves"

**del** command deletes files

No matter what you do, **DO NOT DELETE  
Config, Content, Source folders and .uproject file -> THESE ARE MANDATORY !!!**


[Clean Project directory using batch File | Epic Developer Community](https://dev.epicgames.com/community/learning/tutorials/l7rR/unreal-engine-clean-project-directory-using-batch-file)

[Community Tutorial: Clean Project directory using batch File - General / Tutorial & Course Discussions - Epic Developer Community Forums](https://forums.unrealengine.com/t/community-tutorial-clean-project-directory-using-batch-file/1584928)

```bat
@echo off
echo *********************************************************************************************************************
echo ******************************************** Clean Unreal Engine Project ********************************************
echo *********************************************************************************************************************
echo.
:PROMPT
SET /P AREYOUSURE=Are you sure to delete all Binaries, Build, Intermediate, Saved and DerivedDataCache folders in your project and plugins (y/[N])?
IF /I "%AREYOUSURE%" NEQ "y" GOTO END
echo.
echo Cleaning your project, please wait...
FOR /d /r %%d IN ("Binaries","Build","Intermediate","Saved","DerivedDataCache") DO @IF EXIST "%%d" rd /s /q "%%d"
del *.sln
echo.
echo Your project cleaned perfectly, you can click Generate Visual Studio project files now.
pause
:END
```

[berkanuslu/ue4-clean-vs-project-files.bat - It cleans Binaries, Build, Intermediate, Saved, and DerivedDataCache folders for your Unreal Engine 4 project and all plugins that you have.](https://gist.github.com/berkanuslu/1c118c2cb15c73dcc268e2e1d1b0c128)

## Error code (Use Ctrl+F) 

### MSB3073 code 6

- MSB3073 code 6

[Waitmutex exited with code 6 (MSB3037) - Programming & Scripting / C++ - Epic Developer Community Forums](https://forums.unrealengine.com/t/waitmutex-exited-with-code-6-msb3037/477119)

[visual studio - MSB3073 UE4 exited with code 6 - how do I fix this? - Stack Overflow](https://stackoverflow.com/questions/60696060/msb3073-ue4-exited-with-code-6-how-do-i-fix-this)

### MSB3073 code 8

- MSB3073 code 8

### MSB3073

- MSB3073

[Error Code MSB3073 when I compile - Programming & Scripting / C++ - Epic Developer Community Forums](https://forums.unrealengine.com/t/error-code-msb3073-when-i-compile/1333355/3)

[ue 编译问题 Error MSB3073\_ue5.1.1适用的mscv编译器版本-CSDN博客](https://blog.csdn.net/opk8848/article/details/128417456)

### E0070

- E0070 : Can ingore, focus on Output log

[Help Me getting rid of Visual Studio Errors with Unreal Engine : r/unrealengine](https://www.reddit.com/r/unrealengine/comments/1cuteo7/help_me_getting_rid_of_visual_studio_errors_with/)

### E1696 cannot open source file

- E1696 : cannot open source file, Refresh Visual Studio Project

[Error Code: E1696 - Development / Pipeline & Plugins - Epic Developer Community Forums](https://forums.unrealengine.com/t/error-code-e1696/465126)

[Unable to build engine from source due to following compile errors : r/unrealengine](https://www.reddit.com/r/unrealengine/comments/db5932/unable_to_build_engine_from_source_due_to/?show=original)

[VS2022遇见“C1083” 、“E1696” 报错可能有效的解决办法-CSDN博客](https://blog.csdn.net/leeeo0125/article/details/135049188)