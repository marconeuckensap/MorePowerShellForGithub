
$Token = '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'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$headers = 
@{
    Authorization = 'Basic {0}' -f $Base64Token;
};


$Body = 
@{
    name = 'Marco Neuckens';
    location = 'Hollow Knight';
} | ConvertTo-Json


Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $Body -Method Patch


$repo = 
@{
    repo = New-GitHubRepository -RepositoryName test_repo_001;
    description = 'An other repository created in powershell';

} | ConvertTo-Json

Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $repo -Method Patch