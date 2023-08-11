Write-Host "Install Chocolately..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    Invoke-WebRequest -Uri https://community.chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
Write-Host "Chocolately installation completed....."

Write-Host "Install FireFox..."
Start-Process `
    -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" `
    -ArgumentList "install firefoxesr --version 78.15.0 --params=/NoAutoUpdate /NoMaintenanceService -requirechecksum --no-progress -my" `
    -Wait `
    -Passthru

Write-Host "Install Notepadplusplus..."
    Start-Process `
    -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" `
    -ArgumentList "install notepadplusplus -requirechecksum --no-progress -my" `
    -Wait `
    -Passthru
    