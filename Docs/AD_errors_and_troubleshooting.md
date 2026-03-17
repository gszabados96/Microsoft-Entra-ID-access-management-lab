# Account errors and resolutions.:
    1.  AD Account locked.
        Resolution: Either unlock it from AD or unlock it in Powershell via the "Unlock-ADAccount -Identity $XXXXXXX" command.

    2.  AD account is disabled and expired.
        Resolution: After confirming that the user has a valid contract, manually enable it in AD and extend the expiry date to the correct one.

    3.  The account is in a wrong OU (organizational unit) and that unit is unable to reset the password for the user.
        Resolution: Move the account to the correct OU and also check if every detail is correct (e.g. memberships for that OU, logon script,
            object info etc...).

    4.  User account frequently gets expired even with correct contract.
        Resolution: In case AD gets data from another software as well, make sure that the attributes are perfectly matching, so that there would 
            be no syncing issues.

    5.  There is a duplicate account in AD with the same user ID, and the affected person cannot log in because of that.
        Resolution: Compare the 2 accounts, and after confirming which one is the correct, disable and delete the other one.

    6.  Security team has informed us that a person has been locked out 3 times in the last hour and is asking us to investigate the account.
        Resolution: Agree with the user to disable their account and then after we've confirmed their identity via 3-4 security-related questions,
            re-enable the account, but first log the user out of everywhere and change their password.

    7.  User has been granted access to specific resources, but cannot access it.
        Resolution: He/She has not been added to the AD group of that specific resource -> adding the person resolved the issue after a bit of syn
            cing.
    