#This is a template for future functions
#function rename-Item____($path){
#    $files = Get-ChildItem $path | select *
#    $currentpath  = Get-Location
#    set-location -LiteralPath $path
#        foreach ($file in $files){
#            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "","")
#        }
#    rename-itemremovefistspace $path
#    set-location -LiteralPath $currentpath 
#}


function Rename-ItemRemoveFistSpace($path){
    $files = Get-ChildItem -LiteralPath $path | select *
    $currentpath  = Get-Location
    set-location -LiteralPath $path
        foreach ($file in $files){
            if ($file.name -match "^(\S*)\s"){
                Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "^(\S*)\s","")
        }
   }
}

function Rename-ItemRemoveSquareBrackets($path){
    $files = Get-ChildItem -LiteralPath $path | select *
    $currentpath  = Get-Location
    set-location -LiteralPath $path
        foreach ($file in $files){
            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\[(.*?)\]","")
            }
    Rename-ItemRemoveFistSpace $path
    set-location -LiteralPath $currentpath
}

function Rename-ItemRemovePeriodReplaceWithSpace($path){
    $files = Get-ChildItem -LiteralPath $path | select *
    $currentpath  = Get-Location
    set-location -LiteralPath $path
        foreach ($file in $files){
            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "\.(?=.*\.)"," ")
        }
    Rename-ItemRemoveFistSpace $path
    set-location -LiteralPath $currentpath
}

#work in progress, dont use
function rename-ItemUnderscoreReplaceWithSpace($path){
    $files = Get-ChildItem -LiteralPath $path | select *
    $currentpath  = Get-Location
    set-location -LiteralPath $path
        foreach ($file in $files){
            Rename-Item  -LiteralPath $file.FullName -NewName $($file.name -replace "_"," ")
        }
    rename-itemremovefistspace $path
    set-location -LiteralPath $currentpath 
}
