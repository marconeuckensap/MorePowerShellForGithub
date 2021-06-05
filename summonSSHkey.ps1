$ss_token = Read-Host -AsSecureString -Prompt ’token’ |
ConvertFrom-SecureString |
Tee-Object ./secret.txt |
ConvertTo-SecureString
$creds = New-Object pscredential 'user’, $ss_token
Set-GitHubAuthentication -SessionOnly `
-Credential $creds

$Base64Token = [System.Convert]::ToBase64String([char[]]$creds.GetNetworkCredential().Password)

$api = "https://api.github.com/user/keys"

$headers = 
@{
    Authorization = 'Basic {0}' -f $Base64Token;
};

Invoke-RestMethod -Headers $headers -Uri $api