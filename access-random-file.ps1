Write-Output "Accessing random file"
# $files = Get-ChildItem -Path "./data" -Recurse -Attributes !Directory
# $files = Get-ChildItem -Path "./data" -Recurse -File | Select-Object FullName
$files = Get-ChildItem -Path "./data" -Recurse -File
# Start-Process -FilePath ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"
# $path = ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"

# Write-Output $files

$randomFileIndex = Get-Random -Maximum $files.Count
$path = $files[$randomFileIndex].FullName
Write-Output "$randomFileIndex : $path"

Invoke-Expression "explorer /select,$path"