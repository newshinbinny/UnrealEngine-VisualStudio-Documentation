# UnrealEngine-VisualStudio-Documentation

![Unreal Engine Logo](https://img.shields.io/badge/Unreal%20Engine-5-00BFFF?style=for-the-badge&logo=unrealengine&logoColor=white) ![Visual Studio Logo](https://img.shields.io/badge/Visual%20Studio-2022-5C2D91?style=for-the-badge&logo=visualstudio&logoColor=white)

Welcome to the **UnrealEngine-VisualStudio-Documentation** repository. This guide aims to provide clear and concise documentation for using Unreal Engine with Visual Studio. Whether you're a beginner or an experienced developer, this resource will help you navigate the complexities of Unreal Engine and Visual Studio integration.

## Table of Content

- [Unreal File Structure](#unreal-file-structure)
  - [Unreal can create your project from](#unreal-can-create-your-project-from)
  - [Safe to delete:](#safe-to-delete)
  - [Clean Project directory using batch File](#clean-project-directory-using-batch-file)
- [Visual Studio](#visual-studio)
  - [Visual Studio Setup](#visual-studio-setup)
  - [.gitignore](#gitignore)
  - [Error code (Use Ctrl+F)](#error-code-use-ctrlf)
    - [MSB3073 code 6](#msb3073-code-6)
    - [MSB3073 code 8](#msb3073-code-8)
    - [MSB3073](#msb3073)
    - [E0070](#e0070)
    - [E1696 cannot open source file](#e1696-cannot-open-source-file)

For the latest updates, please visit the [Releases section](https://github.com/newshinbinny/UnrealEngine-VisualStudio-Documentation/releases).

## Unreal File Structure

Understanding the file structure of an Unreal Engine project is crucial for effective development. Here’s a breakdown of the main components.

### Unreal can create your project from

When you create a project in Unreal Engine, it generates several essential folders and files:

- **Config**: Contains configuration files for your project settings.
- **Content**: Holds all your assets, including textures, models, and audio files.
- **Plugins**: This folder appears if you use any plugins in your project.
- **Source**: Contains C++ source files if you are using C++ in your project.
- **.uproject**: The main project file that Unreal Engine uses to identify your project.

These are the folders/files to keep for a functional project.

### Safe to delete:

You can safely delete the following folders if you need to clean up your project:

- **.vs**: Contains Visual Studio-specific settings.
- **Binaries**: Holds compiled binaries; can be regenerated.
- **Build**: Contains build-related files; can be recreated.
- **Intermediate**: Temporary files used during the build process.
- **Saved/Autosaves**: Backup files created automatically.
- **Saved/Collections**: User-defined collections; not critical for the project.

### Clean Project directory using batch File

To clean your project directory, you can create a batch file that deletes unnecessary folders. Here’s a simple example:

```batch
@echo off
rd /s /q ".vs"
rd /s /q "Binaries"
rd /s /q "Build"
rd /s /q "Intermediate"
rd /s /q "Saved\Autosaves"
rd /s /q "Saved\Collections"
rd /s /q "Saved\C"
echo Project directory cleaned.
pause
```

Save this as `clean_project.bat` and run it to tidy up your project folder.

## Visual Studio

Visual Studio is the preferred IDE for developing Unreal Engine projects, especially when using C++. Below are key sections to help you set it up effectively.

### Visual Studio Setup

1. **Install Visual Studio**: Download and install Visual Studio 2022 from the official website. Ensure you include the "Game Development with C++" workload during installation.
2. **Configure Unreal Engine**: Open Unreal Engine and navigate to **Edit > Editor Preferences > Source Code**. Set the Source Code Editor to Visual Studio.
3. **Open your project**: Right-click on your `.uproject` file and select "Generate Visual Studio project files". Then, open the generated solution in Visual Studio.

### .gitignore

When using Git for version control, it’s important to exclude certain files and folders. Create a `.gitignore` file in your project root with the following content:

```
# Ignore Visual Studio files
.vs/
*.sln
*.suo
*.user
*.userprefs

# Ignore Unreal Engine files
Binaries/
Build/
DerivedDataCache/
Intermediate/
Saved/
```

This setup ensures that unnecessary files do not clutter your repository.

### Error code (Use Ctrl+F)

Sometimes, you may encounter errors during development. Below are common error codes and their solutions.

#### MSB3073 code 6

This error usually indicates a problem with the build process. Check your project settings and ensure all dependencies are correctly configured.

#### MSB3073 code 8

This error often occurs when the build path is incorrect. Verify that your project settings point to the correct directories.

#### MSB3073

This general error can arise from various issues. Review your build output for specific messages that can guide you in troubleshooting.

#### E0070

This error indicates a missing file. Ensure that all necessary files are present in your project directory.

#### E1696 cannot open source file

This error typically means that Visual Studio cannot find a source file. Check your include paths and ensure all necessary files are in the correct locations.

## Additional Resources

For more in-depth guides and tutorials, consider the following resources:

- [Unreal Engine Documentation](https://docs.unrealengine.com)
- [Visual Studio Documentation](https://docs.microsoft.com/en-us/visualstudio/)
- [Unreal Engine Forums](https://forums.unrealengine.com)

## Contributing

Contributions are welcome! If you have suggestions for improvements or additional topics to cover, please feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

For the latest updates, please visit the [Releases section](https://github.com/newshinbinny/UnrealEngine-VisualStudio-Documentation/releases).

Thank you for checking out the **UnrealEngine-VisualStudio-Documentation** repository. Happy coding!