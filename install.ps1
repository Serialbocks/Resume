$myDownloadUrl = "https://miktex.org/download/win/miktexsetup-x64.zip"
$zipFilename = "./mikteksetup.zip"
$executableFilename = "./miktexsetup_standalone.exe"
$localPackageDir = "./miktex-repository"

Invoke-WebRequest $myDownloadUrl -OutFile $zipFilename
Expand-Archive -Path $zipFilename -DestinationPath .

& $executableFilename --local-package-repository=$localPackageDir download
& $executableFilename --local-package-repository=$localPackageDir install

Remove-Item $zipFilename
Remove-Item $executableFilename
Remove-Item -Recurse $localPackageDir