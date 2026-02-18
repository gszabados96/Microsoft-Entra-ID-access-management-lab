# Connecting Microsoft Graph
Connect-MgGraph -Scopes User.ReadBasic.All

# Exporting the user data
Get-MgUser -All