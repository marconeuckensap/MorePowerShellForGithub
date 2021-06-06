function Get-AuthHeader 
{

    param ($Credential)
    # if statment if loggin is null: ps will ask the user for login credentials.
    if ($Credential -eq $null)
    {
        $Credential = Read-Host -Prompt ’login’
        #$Credential = Get-Credential
    }

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
  
    Invoke-RestMethod -Headers $headers -Uri $api
    
}
