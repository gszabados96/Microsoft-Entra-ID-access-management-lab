# Microsoft-Entra-ID-access-management-lab
This lab has been created to document and update the processes/errors while configuring and maintaining user accounts / conditional     accesses / PIM within Entra ID.

# Key features:
    1, Multiple users with different information (e.g. department, job title, function, roles) have been created.
    2, Conditional access policies have been created based on RBAC and ABAC method.
    3, configuring and enforcing authentication for different customers.
    4, Implementing a Zero Trust security baseline.

# Actions taken:
    1, Bulk created users via CSV file. (see attached screenshot)
    2, Created different groups for the departments. (see attached screenshot)
    3, Created a small script to export data about the users into CSV file.
    4, Created a small script to generate users in Azure.
    5, Added roles to the tenants within the IT department by manually assigning the roles in their profile (see added screenshots).
    6, Enabled the authentication on the accounts (screen recording is added).
    7, Created an audit report of the authentication methods.

        
# Lessons learned
    1, As I've received the error message "My domain is verified but I still get: ERROR: The domain portion of the userPrincipalName property is invalid. You must use one of the verified domain names in your organization." many times when submitting the bulk user creation, I've investigated the issue and found out I haven't added any specific domain names within Entra ID Custom Domain Names.
      -> resolved it by checking and using the primary domain "gyulaszabados96gmail.onmicrosoft.com
             " in Custom Domain Names. (-> will update the domain name later)
    2, When using the New-AzADUser command with the strings, I've found out that it is easier to generate information while using Strings for user details e.g. $displayName = "John Doe".
        -> That way, I can simply remove the extra details and then modify it to another one e.g. I only need to create 1 user with different information, so I can just modify the field within
            "" . 


# Problems encountered -> resolution/workaround:
    1, Couldn't bulk create users due to non-valid domain -> Found the correct custom 
        domain and used it during the CSV filling.
    2, The script shows the "Access is denied to the folder" EM and cannot export CSV 
        -> Current workaround: Exporting the data into VS Code for now, will find a way
            to export to a file. 
    3, The script didn't realize some parts, e.g. mailName as cmdlets -> started using strings and then entered a name inside the "" part -> it has resolved the issue.

# Author: 
    Gyula Szabados
    LinkedIn Profile: www.linkedin.com/in/gyula-szabados-83b889277
