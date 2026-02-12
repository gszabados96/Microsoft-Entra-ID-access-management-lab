# Security vectors

   1.  Overprivileged role assignment.

        2/a Reason for it: User gets a role that should be out-of-scope for them (e.g. global admin/reader).
        2/b What it could cause: Tenant takeover, creating backdoor etc...
        2/c Mitigation: a, Implementing "Least Privilege" model.
                        b, Regular role review.


    2. Expired Auth methods.

        2/a Cause of it: old phone number or left/stolen device is still set up as an authenticator.
        2/b What it could cause: unknown people could authenticate themselves as legit personnel.
        2/c Mitigation: a, Enforcing re-registering the authenticating methods,
                        b, Regular auth methods review

        
    3. Guest account abuse

        2/a Reason for it: Guest user has too much access, that should normally be out-of-scope.
        2/b What it could cause: Access to otherwise restricted data, that the person could leak.
        2/c Mitigation: a, Restricting roles for guest accounts
                        b, Updated conditional access policies for guest accounts.
                        c, Regularily review their accesses.
                        d, Create a policy that would expire their account after the guest contract ends (group policy in case of multiple guest accounts).
    

 
           