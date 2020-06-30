Write-Host "Running script"
cd C:\
mkdir VS2019
Invoke-WebRequest "https://visualstudio.microsoft.com/thank-you-downloading-visual-studio/?sku=Community&rel=16" -OutFile vs_community.exe -UseBasicParsing
.\vs_community.exe --installPath C:\VS2019 --add Microsoft.VisualStudio.Workload.CoreEditor --passive --norestart
