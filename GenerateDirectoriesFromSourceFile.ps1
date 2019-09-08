#Generate directories from a text file, with the name of each directory on separate lines in the file

$directoriesFile = Read-Host -Prompt "Enter path with the directories file (Ex: C:\directories.txt) "
$pattern=".+"
$targetDir= Read-Host -Prompt 'Enter the target directory Here'

$isAFile = (Get-Item $directoriesFile) -is [System.IO.FileInfo]

if ($isAFile){

get-content $directoriesFile | %{if($_ -match $pattern){mkdir "$targetDir\$_";}}

}

else{

Write-Host "Directories .txt file was not specified" -ForegroundColor red -BackgroundColor black
}
