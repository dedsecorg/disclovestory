Remove-Item –path $env:temp\Disclovestory –recurse
mkdir $env:temp\Disclovestory
cd $env:temp\Disclovestory
$FileName = "DiscLovestory-master.zip"
if (Test-Path $FileName)
{
  Remove-Item $FileName
}
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"
wget -O "$env:temp\Disclovestory\$FileName" https://github.com/godzillamesel/disclovestory/archive/master.zip
mkdir $env:temp\DiscLovestory\unzip
Expand-Archive $env:temp\Disclovestory\$FileName -DestinationPath $env:temp\DiscLovestory\unzip
