# SSW.EditorConfig

## Overview

Best practice `.editorconfig` file for .NET development.

Defaults from `dotnet new editorconfig` have been merged with defaults from [VS2019](https://docs.microsoft.com/en-us/dotnet/fundamentals/code-analysis/code-style-rule-options?view=vs-2019#example-editorconfig-file).

Then most rules have been elevated into warnings, but lowered some to suggestions.

## Setup

1. Copy `.editorconfig` into the root of your repository
2. Configure your `Directory.Build.Props` at the root of your project:

```xml
<Project>
 <PropertyGroup>
   <TreatWarningsAsErrors Condition="'$(Configuration)' != 'Debug'">true</TreatWarningsAsErrors>
 </PropertyGroup>
</Project>
```

### Script

Alternatively, copy & paste this script in a Terminal, inside the root directory of your project:

```powershell
$editorConfigPath="./.editorconfig";if(-not (Test-Path $editorConfigPath)){Invoke-WebRequest "https://raw.githubusercontent.com/SSWConsulting/SSW.EditorConfig/main/.editorconfig" -OutFile $editorConfigPath;Write-Host "File installed: '$editorConfigPath'"}else{Write-Host "File already exists: '$editorConfigPath'"};$directoryBuildPropsPath="./Directory.Build.Props";if(-not (Test-Path $directoryBuildPropsPath)){Invoke-WebRequest "https://raw.githubusercontent.com/SSWConsulting/SSW.EditorConfig/main/Directory.Build.Props" -OutFile $directoryBuildPropsPath;Write-Host "File installed: '$directoryBuildPropsPath'"}else{Write-Host "File already exists: '$directoryBuildPropsPath'"}
```

## Resources

- [code-analysis-overview](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7)
- [code-quality-analysis](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7#code-quality-analysis)
- [code-style-analysis](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7#code-style-analysis)
- [create-portable-custom-editor-options](https://learn.microsoft.com/en-us/visualstudio/ide/create-portable-custom-editor-options?view=vs-2022)
- [errors-as-warings](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/compiler-options/errors-warnings)
