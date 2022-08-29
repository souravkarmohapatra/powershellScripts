cd C:\diskspacetest
$Files = Get-ChildItem | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-2)}
ForEach ($File in $Files) {
    $File | Compress-Archive -DestinationPath "C:\zipfolder\($File.archived).zip"
    Remove-Item $File
}
