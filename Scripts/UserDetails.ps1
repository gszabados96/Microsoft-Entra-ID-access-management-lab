Connect-AzAccount
$users = Get-AzADUser -First 30
$users | Format-Table DisplayName, UserPrincipalName, Mail, AccountEnabled, UserType, CompanyName, PasswordPolicy
$users | Export-Csv -Path '.\CV Exports'
Write-Host "CSV List has been successfully exported."