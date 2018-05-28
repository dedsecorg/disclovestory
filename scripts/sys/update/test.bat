powershell -Command "&{(Get-Content c:\test.xml) | Foreach-Object {([regex]::matches( $_, 'findthis9=\"7\"'))} | Measure-Object | select -expand Count}
