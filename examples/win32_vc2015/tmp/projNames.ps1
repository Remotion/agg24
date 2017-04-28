$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
$PSScriptRoot += "\"

cd $PSScriptRoot


function tmpl2new($newName){
    $projFile = "$newName.vcxproj"
    $filtFile = "$newName.vcxproj.filters"
    (Get-Content template.vcxproj) | ForEach-Object { $_ -replace "template", $newName } | Set-Content $projFile
    (Get-Content template.vcxproj.filters) | ForEach-Object { $_ -replace "template", $newName } | Set-Content $filtFile
}

$reader = [System.IO.File]::OpenText( $PSScriptRoot + "projNames.txt")
try {
    for() {
        $line = $reader.ReadLine()
        if ($line -eq $null) { break }
        # process the line
        tmpl2new($line)
    }
}
finally {
    $reader.Close()
}


