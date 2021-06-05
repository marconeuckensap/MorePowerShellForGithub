$Token = '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'
$Base64Token = [System.Convert]::ToBase64String([char[]]$Token);

for (($i=1), ($repos=@()), ($res=$null); ($i -eq 1) -or ($res.Count); $i++) {
Write-Host $i
$res = Invoke-RestMethod -Headers $headers -Uri https://api.github.com/user/repos?page=$i
$repos += $res
}
$repos.ssh_url
