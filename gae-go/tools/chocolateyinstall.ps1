# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop'; # stop on all errors


$packageName  = 'gae-go' # arbitrary name for the package, used in messages
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_windows_386-1.9.31.zip' # download url
$url64        = 'https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_windows_amd64-1.9.31.zip' # 64bit URL here or remove - if installer is both, use $url
$checksum     = '4ca246af49f5125c15722521e54b7ce1811b083e'
$checksum64   = '38500dd69e4c8fbd9c503ea7c55e0a19a04db986'
$checksumType = 'sha1'

## Main helper functions - these have error handling tucked into them already
## see https://github.com/chocolatey/choco/wiki/HelpersReference

## Download and unpack a zip file
Install-ChocolateyZipPackage $packageName $url $toolsDir $url64 `
-checksum $checksum -checksumType $checksumType -checksum64 $checksum64
