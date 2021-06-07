# this command will show the dir and the files where you installed git
Get-ChildItem (get-item (Get-Command git).Source).Directory
