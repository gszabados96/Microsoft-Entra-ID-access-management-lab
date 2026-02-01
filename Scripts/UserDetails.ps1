Connect-AzAccount
$users = Get-AzADUser -First 30
$users | Format-Table DisplayName, UserPrincipalName, Mail, AccountEnabled, UserType, CompanyName, PasswordPolicy
Write-Host "Data has been successfully exported."