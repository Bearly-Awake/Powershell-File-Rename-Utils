function rename-ItemRemoveSquareBrackets($path){
$files = Get-ChildItem $path | select *
cd $path
    foreach ($file in $files){
        Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\[(.*?)\]","")
        }
}

function rename-ItemRemovePeriodReplacewithSpace($path){
$files = Get-ChildItem $path | select *
cd $path
    foreach ($file in $files){
        Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\."," ")
    }
}
