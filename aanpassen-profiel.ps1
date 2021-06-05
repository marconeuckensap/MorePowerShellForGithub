$ss_token = Read-Host -AsSecureString -Prompt ’token’ |
ConvertFrom-SecureString |
Tee-Object ./secret.txt |
ConvertTo-SecureString
$creds = New-Object pscredential 'user’, $ss_token
Set-GitHubAuthentication -SessionOnly `
-Credential $creds

$Base64Token = [System.Convert]::ToBase64String([char[]]$creds.GetNetworkCredential().Password)

$api = "https://api.github.com/user"

$headers = 
@{
    Authorization = 'Basic {0}' -f $Base64Token;
};


$Body = 
@{
    name = 'Marco-sama';
    location = 'Antwerpen';
    company = 'AP Hogeschool';
} | ConvertTo-Json


Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $Body -Method Patch
