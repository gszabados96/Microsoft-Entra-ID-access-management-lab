markdown

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

# Lessons learned
    1, As I've received the error message "My domain is verified but I still get: ERROR: The domain portion of the userPrincipalName property is invalid. You must use one of the verified domain names in your organization." many times when submitting the bulk user creation, I've investigated the issue and found out I haven't added any specific domain names within Entra ID Custom Domain Names.
      -> resolved it by checking and using the primary domain "gyulaszabados96gmail.onmicrosoft.com
             " in Custom Domain Names. (-> will update the domain name later)


# Author: 
    Gyula Szabados
    LinkedIn Profile: www.linkedin.com/in/gyula-szabados-83b889277