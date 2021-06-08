$var = 5
Write-Output $var

function Test-ScriptScope {
    Write-Output $var
}

# tijdens het runnen van het script in powershell(ISE) komt meteen de inhoude van $var tevoorschijn 