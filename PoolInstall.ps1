cd C:\
Invoke-WebRequest "https://vstsagentpackage.azureedge.net/agent/2.170.1/vsts-agent-win-x64-2.170.1.zip" -OutFile Agent.zip
mkdir azagent ; cd azagent
$filePath = Resolve-Path ..\Agent.zip
Add-Type -AssemblyName System.IO.Compression.FileSystem ; [System.IO.Compression.ZipFile]::ExtractToDirectory("$filePath", "$PWD")
.\config.cmd --unattended --url "https://dev.azure.com/grensdevops" --auth pat --token "djc6moqgll7bgmra5yf3xodxhsjniopetcbz5we7idd3jofntgkq" --pool "ZFVM" --agent "VMAgent" --runAsService
Stop-Transcript
exit 0
