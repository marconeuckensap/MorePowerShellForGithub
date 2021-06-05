Read-Host -AsSecureString -Prompt ’token’ |
# converts string to secure data
ConvertFrom-SecureString |
Tee-Object .\secret.txt |
# converting token to a secure string
ConvertTo-SecureString |
# sets variable for security.securestring
Set-Variable ss_token
#user and token set to variable creds
$creds = New-Object pscredential 'user’, $ss_token
Set-GitHubAuthentication -SessionOnly `
-Credential $creds