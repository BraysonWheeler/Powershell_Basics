
[int]$filecount = 0
[int]$foldercount = 0
[int]$size = 0

$path = 'Desktop'

$rawfinfo = Get-ChildItem $path - -Recurse

#loops through every item
foreach ($item in $rawfinfo){
    if($item.PSIsContainer){
        #check to see if dir
        $foldercount++
    }
    else{
        $filecount++
        $size += $item
    }
}

write-host "Break down of $Path"
write-host "Total Dir: $foldercount"
write-host "Total files: $filecount"
write-host "Total size of files: $($size / 1MB) MB"



$path = 'C:\Documents and Settings'
$evalpath = Test-Path $path

if ($evalpath -eq $true) {
   Write-Host "$evalpath correct" 
}elseif ($evalpath -eq $false) {
    #preform different action
    Write-Host "$path not correct"
}

[int]$val = Read-Host 'enter num'

#evaluate conditions
switch ($val) {
    1{ 
        Write-Host 'you entered 1'
     }
    2{
         Write-Host 'you entered 2'
     }
    Default {
        write-host "not sure what to do with $val"
    }
}

#forloop write out i value changes every color
for($i = 0; $i -le 15; $i++){
    write-host $i -ForegroundColor $i
}

$string = 'abcdef'
$revstring = ''
for ($i = $string.Length; $i -ge 0; $i--) {
    $revstring += $string[$i]
}
$revstring

$path = 'Desktop'
[int]$size = 0
$finfo = Get-ChildItem $path -Recurse
foreach($file in $finfo){
    $size += $file.Length
}
write-host "total size of file in $path is $($size /1MB) MB"

$pathverf = $false
do {
    $path =Read-Host 'enter a file path'
    if(Test-Path $path){
        $pathverf = $true
        Write-Host 'correct'
    }
}while ($pathverf -eq $false)

while($pathverf -eq $false){
    $path = read-host 'input path'
    if(Test-Path $path){
        write-host 'found path'
    }
    else{
        write-host 'wrong path'
    }
}



#where-object is evaluating some critera given for each 

$largeps = Get-Process | Where-Object {$_.WorkingSet64 -gt 50MB}
$largeps

#exact same as above

$largeps = @()
$ps = Get-Process
foreach($ps in $ps){
    if($ps.WorkingSet64 -gt 110MB){
        $largeps += $ps
    }
}
$largeps


#foreaach-object this will count all folders

$path = 'Desktop'
[int]$foldercount = 0
Get-ChildItem $path | ForEach-Object -Process { if($_.PSIsContainer) {$foldercount++}}
$

