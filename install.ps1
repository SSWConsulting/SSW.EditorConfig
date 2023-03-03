$editorConfigPath = "./.editorconfig";

if (-not (Test-Path $editorConfigPath)) {
    Invoke-WebRequest "https://raw.githubusercontent.com/SSWConsulting/SSW.EditorConfig/main/.editorconfig" -OutFile $editorConfigPath
    Write-Host "File installed: '$editorConfigPath'"
}
else {
    Write-Host "File already exists: '$editorConfigPath'"
}

$directoryBuildPropsPath = "./Directory.Build.Props";

if (-not (Test-Path $directoryBuildPropsPath)) {
    Invoke-WebRequest "https://raw.githubusercontent.com/SSWConsulting/SSW.EditorConfig/main/Directory.Build.Props" -OutFile $directoryBuildPropsPath
    Write-Host "File installed: '$directoryBuildPropsPath'"
}
else {
    Write-Host "File already exists: '$directoryBuildPropsPath'"
}