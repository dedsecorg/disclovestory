cd "$env:programfiles\DiscLovestory\sys\update"

$FileName = "git_commit.log"
if (Test-Path $FileName)
{
  Remove-Item $FileName
}
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
wget -O $env:programfiles\DiscLovestory\sys\update\git_commit.log http://api.github.com/repos/godzillamesel/disclovestory/commits
