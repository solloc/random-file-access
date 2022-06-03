Param(
    [Parameter(Mandatory=$true)]
    $Path
)

Write-Output "Accessing random file"

$files = Get-ChildItem -Path $Path -Recurse -File
$randomFileIndex = Get-Random -Maximum $files.Count
$filePath = $files[$randomFileIndex].FullName
$filePath = """""""$($filePath)"""""""

Write-Output "$randomFileIndex : $filePath"

Invoke-Expression "explorer /select,$filePath"