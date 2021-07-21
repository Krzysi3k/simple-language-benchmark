Write-Host "powershell 5.1:" -ForegroundColor Yellow
powershell.exe .\s.ps1
Write-Host "powershell 7.1:" -ForegroundColor Yellow
pwsh.exe .\s.ps1
Write-Host "python:" -ForegroundColor Yellow
python .\s.py
Write-Host "pypy:" -ForegroundColor Yellow
pypy3 .\s.py
Write-Host "go:" -ForegroundColor Yellow
go run .\s.go