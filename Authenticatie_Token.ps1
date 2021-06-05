Read-Host -AsSecureString -Prompt ’token’ |
# converts string to secure data
ConvertFrom-SecureString |
# Tee-Object writes the outcome to a  given file name 
Tee-Object .\secret.txt |
# converting token to a secure string
ConvertTo-SecureString |
# sets variable for security.securestring
Set-Variable ss_token
#user and token set to variable creds
$creds = New-Object pscredential 'user’, $ss_token
Set-GitHubAuthentication -SessionOnly `
-Credential $creds
# Testing to see if you are logged on.
Test-GitHubAuthenticationConfigured

Get-History | Tee-Object .\snippets.ps1