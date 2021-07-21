Set-Location $pwd.Path
Remove-Item .\results.txt -Force -ErrorAction SilentlyContinue
powershell.exe .\s.ps1 | Out-File .\results.txt -Append
pwsh.exe .\s.ps1 | Out-File .\results.txt -Append
python .\s.py | Out-File .\results.txt -Append
pypy3 .\s.py | Out-File .\results.txt -Append
go run .\s.go | Out-File .\results.txt -Append
julia .\s.jl | Out-File .\results.txt -Append

$content = Get-Content .\results.txt
$languages = @("powershell 5.1", "powershell 7.1", "python", "pypy", "go", "julia")
$arr = @()
for ($i = 0; $i -lt $languages.Count; $i++) {
    $arr += [PSCustomObject]@{
        language=$languages[$i]
        result=$content[$i].Replace('ms',' milliseconds')
    }
}

$arr