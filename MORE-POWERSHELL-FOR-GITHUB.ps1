#just do it/ more_powershell_for_github.ps1

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

    $global:api = "https://api.github.com/user"

    $global:headers = 
    @{
        Authorization = 'Basic {0}' -f $Base64Token;

        
    };  
  
    Invoke-RestMethod -Headers $headers -Uri $api    
}

# Add-GithubCollaborator.

function Add-GitHubCollaborator 
{
    <#
        .Description
    
        The Add-GitHubCollaborator is a function that lets you invite other github users as colaborators.
        this function also has 3 parameters. 
    

        
    #>
    param ($Credential, $Repository, $Collaborator)

    Get-AuthHeader -Credential $Credential

    $global:api = "https://api.github.com/repos/$Credential/$Repository/collaborators/$Collaborator"

    $Body = 
    @{
        username = $Collaborator;
        repo = $Repository;
        owner = $Credential;
    }| ConvertTo-Json

    Invoke-RestMethod -Headers $headers -Uri $api -body $Body -Method Put  

    # With this command i will invite dave to colab with my test-repo.
    # Add-GitHubCollaborator -Credential marconeuckensap -Repository test_repo -Collaborator MisterD-git 
}

function Get-GitHubCollaborator 
{
    <#
        .Description
    
        The Get-GithubCollaborator function will show you all the colaborators of the working repostory.
     
    

        
    #>

    param ($Credential, $Repository)
    
    $global:api = "https://api.github.com/repos/$Credential/$Repository/collaborators"
    
   
    
Invoke-RestMethod -Headers $headers -Uri $api -body $Body -Method Get
    
}

function Get-RepositoryInvitations 
{
    param 
    (
        $RepositoryName, $OwnerGroup, $MailDomains
    )

    $global:api = "https://api.github.com/user/repository_invitations"
    Invoke-RestMethod -Headers $headers -Uri $api -Method Get

}