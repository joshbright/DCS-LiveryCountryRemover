#Author: Joshua Bright
$regex = '(?ms)(^countries)'
$replace = "--countries"

$files = Get-Childitem -Recurse -Include description.lua
foreach ($file in $files) {
	$directoryPath = $file.DirectoryName
	$backupFile = $directoryPath+"\descriptionBackup.luabak"
	$fixedFile = $directoryPath+"\description.lua"
	$text = ($file | Get-Content -Raw)
	
	if($text -match $regex){
		#make a backup of the description file
		$text | Set-Content -Path $backupFile
		
		#make the changes to the original description file
		$text -replace $regex, $replace | Set-Content -Path $fixedFile
		echo "Backedup and Modified"$fixedFile
	}
}
Write-Host -NoNewLine 'Liveries successfully modified. Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown');
