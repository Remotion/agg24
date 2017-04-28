param(
[Parameter(Mandatory=$true)][String] $newName
)
$projFile = "$newName.vcxproj"
$filtFile = "$newName.vcxproj.filters"

#copy template.vcxproj $projFile
#copy template.vcxproj.filters $filtFile

(Get-Content template.vcxproj) | ForEach-Object { $_ -replace "template", "$newName" } | Set-Content $projFile
(Get-Content template.vcxproj.filters) | ForEach-Object { $_ -replace "template", "$newName" } | Set-Content $filtFile
