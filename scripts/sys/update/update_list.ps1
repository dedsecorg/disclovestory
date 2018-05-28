cd "$env:programfiles\DiscLovestory\sys\update"
Remove-Item "git_commit.log"
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
wget -O git_commit.log http://api.github.com/repos/godzillamesel/disclovestory/commits
pause
