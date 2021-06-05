$auth = 
[system.convert]::ToBase64String([char[]]$creds.getNetworkCredential().password)
$headers = @{Authorization="basic $auth"}