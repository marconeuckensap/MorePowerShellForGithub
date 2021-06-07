function Add-GitHubCollaborator {

param ($Credential, $Repository, $Collaborator)

Get-AuthHeader -Credential $Credential

$global:api = "https://api.github.com/repos/$Credential/$Repository/collaborators/$Collaborator"

$Body = 
@{
    username = $Collaborator;
    repo = $Repository;
    owner = $Credential;
} | ConvertTo-Json

Invoke-RestMethod -Headers $headers -Uri $api -body $Body -Method Put  
}
<#
na het inloggen loop ik tegen een error aan die ik momenteel niet opgelost krijg
#>