cd C:\ ;mkdir azagent;cd C:\azagent; Invoke-WebRequest -Uri https://vstsagentpackage.azureedge.net/agent/2.170.1/vsts-agent-win-x64-2.170.1.zip -OutFile c:\azagent\azagent.zip;Add-Type -AssemblyName System.IO.Compression.FileSystem;[System.IO.Compression.ZipFile]::ExtractToDirectory( "c:\azagent\azagent.zip", "$PWD");.\config.cmd --unattended --url "https://dev.azure.com/grensdevops" --auth pat --token "djc6moqgll7bgmra5yf3xodxhsjniopetcbz5we7idd3jofntgkq" --pool "ZFWindows" --agent "zfagent" --runAsService;Stop-Transcript;exit 0