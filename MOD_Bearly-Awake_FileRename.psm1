#
#This is a template for future functions
#function rename-Item____($path){
#    $files = Get-ChildItem $path | select *
#    $currentpath  = Get-Location
#    cd $path
#        foreach ($file in $files){
#            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "","")
#        }
#    cd $currentpath 
#}


function rename-ItemRemoveSquareBrackets($path){
    $files = Get-ChildItem $path | select *
    $files = Get-ChildItem $path | select *
    $currentpath  = Get-Location
        foreach ($file in $files){
            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\[(.*?)\]","")
            }
    cd $currentpath  = Get-Location
}

function rename-ItemRemovePeriodReplaceWithSpace($path){
    $files = Get-ChildItem $path | select *
    $currentpath  = Get-Location
    cd $path
        foreach ($file in $files){
            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\.(?=.*\.)"," ")
        }
    cd $currentpath  = Get-Location
}
