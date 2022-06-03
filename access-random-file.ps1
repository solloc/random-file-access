Write-Output "Accessing random file"
$files = Get-ChildItem -Path "./data" -Recurse -Attributes !Directory -Name
# Start-Process -FilePath ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"
$path = ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"
# Invoke-Expression "explorer /select,$path"
Write-Output $files

$randomFileIndex = Get-Random -Maximum $files.Count
Write-Output $randomFileIndex
