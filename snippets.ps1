
  Id CommandLine                                                               
  -- -----------                                                               
   1 Get-Credential                                                            
   2 Read-Host -AsSecureString -Prompt ’token’ |...                            
   3 ls                                                                        
   4 cd .\OneDrive                                                             
   5 ls                                                                        
   6 cd .\Muziek                                                               
   7 ls                                                                        
   8 cd .\Schooljaar_20-21                                                     
   9 ls                                                                        
  10 cd .\OS_Scripting                                                         
  11 ls                                                                        
  12 cd .\Powerschell                                                          
  13 ls                                                                        
  14 cd .\MorePowerShellForGithub                                              
  15 git status                                                                
  16 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  17 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  18 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  19 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  20 git status                                                                
  21 git add Authenticatie_Token.ps1                                           
  22 git status                                                                
  23 git commit -m 'script that converts the token'                            
  24 git status                                                                
  25 git push                                                                  
  26 Get-GitHubUser -Current                                                   
  27 Test-GitHubAuthenticationConfigured                                       
  28 Set-GitHubAuthentication                                                  
  29 Get-GitHubUser -Current                                                   
  30  Get-GitHubUser -Current...                                               
  31 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  32 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  33 Get-GitHubUser -Current                                                   
  34 git status                                                                
  35 git add Authenticatie_Token.ps1                                           
  36 git commit -m 'new token'                                                 
  37 git push -u origin main                                                   
  38 git push -u origin master                                                 
  39 Get-GitHubUser -Current                                                   
  40 Set-GitHubConfiguration -DefaultOwnerName marconeuckensap                 
  41 Set-GitHubConfiguration -DefaultRepositoryName C:\Users\Administrator\O...
  42 Set-GitHubConfiguration -DefaultRepositoryName 'C:\Users\Administrator\...
  43 Get-GitHubUser -Current                                                   
  44 git status                                                                
  45 git add '.\just do it.ps1'                                                
  46 git commit -m 'first try with Authorization'                              
  47 git push -u origin master                                                 
  48 Get-GitHubUser -Current                                                   
  49 Test-GitHubAuthenticationConfigured                                       
  50 Get-GitHubUser -Current                                                   
  51 Get-History                                                               
  52 Get-Command -Module PowerShellForGitHub -Name *auth*                      
  53 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  54 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  55 get status                                                                
  56 git status                                                                
  57 git add Authenticatie_Token.ps1                                           
  58 git commit -m 'get auth and get history is added'                         
  59 git push                                                                  
  60 Get-GitHubUser -Current                                                   
  61 Get-GitHubUser -Current                                                   
  62 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  63 gitstatus                                                                 
  64 git add .                                                                 
  65 git commit -m ' script that create a repo and puts it on github'          
  66 git push                                                                  
  67 Read-Host -AsSecureString -Prompt ’token’ |...                            
  68 Get-GitHubUser -Current                                                   
  69 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  70 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  71 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
  72 git status                                                                
  73 git add RepoMakenPS.ps1                                                   
  74 git status                                                                
  75 git commit -m 'script that helps you make adjustments to your profile'    
  76 git push                                                                  
  77 git status                                                                
  78 git status                                                                
  79 git add .                                                                 
  80 git commit -m                                                             
  81 git push                                                                  
  82 git status                                                                
  83 git add .                                                                 
  84 git status                                                                
  85 git commit -m                                                             
  86 git commit -m ''                                                          
  87 git commit -m ' '                                                         
  88 git status                                                                
  89 git commit -m 'making adjustments '                                       
  90 git push                                                                  
  91 git status                                                                
  92 git status                                                                
  93 git add RepoMakenPS.ps1                                                   
  94 git commit -m 'with this scrip you wil create a new (private) repository' 
  95 git push                                                                  
  96 history                                                                   
  97 cat /c/Users/Administrator/.ssh/id_rsa.pub                                
  98 cat C:\Users\Administrator\.ssh\id_rsa.pub                                
  99 C:\Users\Administrator\OneDrive\Muziek\Schooljaar_20-21\OS_Scripting\Po...
 100 git status                                                                
 101 git add summonSSHkey.ps1                                                  
 102 git commit -m 'this script wil show your ssh key'                         
 103 git push                                                                  
 104 get-help function -Examples                                               
 105 Get-GitHubRepository                                                      
 106 Get-Item                                                                  
 107 git status                                                                
 108 git add denkoeffening.ps1                                                 
 109 git commit -m 'denkoeffening with explenation of the script'              
 110 git push                                                                  
 111 . .\test_script001.ps1                                                    
 112 Test-ScriptScope                                                          
 113 $var                                                                      
 114 git status                                                                
 115 git add test_script001.ps1                                                
 116 git commit -m 'explaining var function and .'                             
 117 git push                                                                  
 118 Rename-Item .\test_script001.ps1 MyModule.psm1                            
 119 Remove-Item function:\test-ScriptScope                                    
 120 Remove-Variable var                                                       
 121 Import-Module .\MyModule.psm1                                             
 122 git status                                                                
 123 Get-History                                                               


