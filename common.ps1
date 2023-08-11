Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('http://internal/odata/repo/ChocolateyInstall.ps1'))

Start-Process `
    -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" `
    -ArgumentList "firefoxesr --version 78.15.0 --params='\"/NoAutoUpdate /NoMaintenanceService\"' -requirechecksum --no-progress -my" `
    -Wait `
    -Passthru

    Start-Process `
    -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" `
    -ArgumentList "install notepadplusplus -requirechecksum --no-progress -my" `
    -Wait `
    -Passthru
    