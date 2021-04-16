<# asks for path returns #>
$path = Read-Host -prompt 'file path to scan for large files'
$raw = Get-ChildItem -Path $path -Recurse
$large = $raw | Where-Object {$_.length -gt 100MB}
$largecount = $large | Measure-Object | Select-Object -ExpandProperty Count
Write-Host "you have $largecount large files in $path"



$var = Get-Process

$var | Where-Object {$_.CPU -gt 5000}

$var | Sort-Object WorkingSet64 -Descending

<# variable declaration similar to python bools are $true #>
$mynewvar


<#get-member gives u the type name showsing us what it is int,string, etc#>
$total = 2 + 2
$total | Get-Member

$total = '2 + 2'
$total | Get-Member

$n1 = 1
$n2 = 2

$n3 = $n1 + $n2
$n3

$n1 = '1'
$n2 = '2'
 
$n3 = $n1 + $n2
$n3

<# can declare it even if '1' it will be an int #>
[int]$num1 = 1
[int]$num2 = 2
$total = $num1 + $num2

$total = $total.ToString()
$total | Get-Member

$literal = 'two plus one: $(1+2)'
$literal
<#two plus one equal 3#>
$literal = "two plus one equal $(1+2)"
$literal

<# same as print#>
write-host "$literal"

<#shows all types of vars#>
Get-Variable

<#
shows env int his session $env:computername
$env:username gives username
#>
Get-ChildItem env:

