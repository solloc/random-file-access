Write-Output "Accessing random file"
Get-ChildItem -Path "./data" -Recurse -Attributes !Directory -Name
# Start-Process -FilePath ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"
$path = ".\data\f3\f31\f311\f3111\evangelion_by_machi_mile_df6mo2b-fullview.jpg"
Invoke-Expression "explorer /select,$path"