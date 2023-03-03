# SSW.EditorConfig

## Overview

Best practice `.editorconfig` file for .NET development.

Defaults from `dotnet new editorconfig` have been merged with defaults from [VS2019](https://docs.microsoft.com/en-us/dotnet/fundamentals/code-analysis/code-style-rule-options?view=vs-2019#example-editorconfig-file).

Then most rules have been elevated into warnings, but lowered some to suggestions.

## Setup

1. Copy `.editorconfig` into the root of your repository
2. Copy `Directory.Build.Props` into the root of your repository (this will treat warnings as errors in Release mode - typically your CICD pipeline) 

### Script

Alternatively, copy & paste this script in a Terminal, inside the root directory of your project:

```powershell
. { iwr -useb "https://raw.githubusercontent.com/SSWConsulting/SSW.EditorConfig/main/install.ps1" } | iex
```

## Resources

- [code-analysis-overview](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7)
- [code-quality-analysis](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7#code-quality-analysis)
- [code-style-analysis](https://learn.microsoft.com/en-us/dotnet/fundamentals/code-analysis/overview?tabs=net-7#code-style-analysis)
- [create-portable-custom-editor-options](https://learn.microsoft.com/en-us/visualstudio/ide/create-portable-custom-editor-options?view=vs-2022)
- [errors-as-warings](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/compiler-options/errors-warnings)
