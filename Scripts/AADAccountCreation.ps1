Clear-Host
Connect-AzAccount
# User details
$displayName        = ""
$userPrincipalName  = ""
$mailNickname       = ""
$companyName        = ""
$passwordProfile.Password = ""
$givenName = ""
$Surname = ""
$Mail = ""
$Department = ""


# User creation
$newUser = New-AzADUser    -DisplayName $displayName `
                           -UserPrincipalName $userPrincipalName `
                           -MailNickname $mailNickname `
                           -PasswordProfile $passwordProfile `
                           -AccountEnabled $true `
                           -CompanyName $companyName `
                           -GivenName $givenName `
                           -Surname $Surname `
                           -Mail $Mail `
                           -Department $Department `

# Confirming that the account has been generated.
Write-Host "Account has been successfully created: $($newUser.UserPrincipalName)"
