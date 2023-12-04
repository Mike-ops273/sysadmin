<# 
this is a handy script to use when you need to create a 
distribution group with several users and the bulk 
add members button is greyed out in the admin center and 
adding members one by one with the gui will take forever 
#>

# you will need PowerShell 7 or newer 
# you will need to install Exchange Online PowerShell Module 

# create the distribution group in the admin center and only add yourself as owner

# set PowerShell execution policy to remote signed from an elevated window: 
Set-ExecutionPolicy RemoteSigned 

# import the Exchange Online Management module: 
import-Module ExchangeOnlineManagement 

# connect shell to Exchange Online and verify browser prompt: 
Connect-ExchangeOnline -UserPrincipalName "yourname@yourdomain.com" 

# confirm connection by looking up your domains: 
Get-AcceptedDomain 

# add members to the distribution group 
# it is imortant not to include spaces or newlines in the list of emails 
# separate the emails from each other with ","
# remove all spaces and newline characters with a good text editor or write a script for it  
# you can also read a csv file containing the emails into the code
Update-DistributionGroupMember -Identity "Group You Created Earlier" -Members john@company.com,jane@company.com,smith@company.com,etc,etc,etc 

# you will be asked to confirm a terminal prompt 
# verify the script worked by inspecting the distribution group in the admin center 

# finally disconnect the shell from Exchange Online 
# DO NOT FORGET to disconnect from Exchange Online when you are done! 
Disconnect-ExchangeOnline 

<#
Limitations and things to consider: 
-the cmdlet "Update-DistributionGroupMember" will overwrite your current distribution list 
-avoid overwriting data by downloading the current distribution list to csv from the admin center 
-if you forget to set yourself as the owner of the distribution group, you might not be able to
run scripts on it
#>