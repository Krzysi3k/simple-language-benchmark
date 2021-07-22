Set-Location $pwd.Path
Remove-Item .\results.txt -Force
$programs = [ordered]@{
    'powershell 5.1' = 'powershell .\s.ps1'
    'powershell 7.1' = 'pwsh.exe .\s.ps1'
    'python' = 'python .\s.py'
    'pypy' = 'pypy3 .\s.py'
    'lua' = 'lua53 .\s.lua'
    'go' = 'go run .\s.go'
    'julia' = 'julia .\s.jl'
    'dotnet' = 'dotnet run .\s.cs'
}

foreach($prog in $programs.Keys) {
    Write-Verbose "running $prog workload..." -Verbose
    Invoke-Expression $programs[$prog] | Out-File .\results.txt -Append
}

$content = Get-Content .\results.txt
[System.Collections.ArrayList]$languages = $programs.Keys
$arr = @()
for ($i = 0; $i -lt $languages.Count; $i++) {
    $arr += [PSCustomObject] @{
        language=$languages[$i]
        result=$content[$i].Replace('ms',' milliseconds')
    }
}

$arr