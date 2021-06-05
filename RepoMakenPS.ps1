$Token = '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'
# converting for token
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

$headers = 
@{
    Authorization = 'Basic {0}' -f $Base64Token;
};

#creating new nepo named test.
$repo = 
@{
    repo = New-GitHubRepository -RepositoryName test;
    description = 'An other repository created in powershell';

} | ConvertTo-Json
#new repo to github
Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user -body $repo -Method Patch
