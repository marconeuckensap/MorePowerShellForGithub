
$Token = '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'

$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$headers = 
@{
    Authorization = 'Basic {0}' -f $Base64Token;
};


$Body = 
@{
    name = 'Marco Neuckens';
    location = 'Antwerpen';
    company = 'AP Hogeschool';
} | ConvertTo-Json


Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $Body -Method Patch


<#$repo = 
@{
    repo = New-GitHubRepository -RepositoryName MorePowerShellForGithub;
    description = 'An other repository created in powershell';

} | ConvertTo-Json

Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $repo -Method Patch
#>