# Welk commando + parameters gebruik je om de commando's in deze module terug te vinden?
Get-Command -Module AzureAD

# Welk commando gebruik je om aan te loggen bij Azure?
Connect-AzureAD 
Connect-AzureAD -AccountId s115453@ap.be

# Zoek het commando om users op te vragen. 
# Zoek dan je eigen user in AzureAD. 
Get-AzureADUser
Get-AzureADUser -ObjectId S115453@ap.be

# Hoe vind je de groepen waar je als gebruiker inzit?
Get-AzureADGroup
Get-AzureADUserMembership -ObjectId "4a6a...."

#Hoe vind je je medestudenten voor de vakken (groepen) waar je in zit?
Get-AzureADUserMembership -ObjectId "s115453@ap.be"