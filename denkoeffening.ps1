# maakt een nieuwe repo van de huidige dir. get-item .name zal gebruiker maken van de naam van huidige dir
$repo = New-GitHubRepository -Name (Get-Item .).Name
# maakt een private repo aan 
$repo | Set-GitHubRepository -Private
#opvragen van de repo.
$repo = ($repo | Get-GitHubRepository)
