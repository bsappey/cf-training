<cfscript>
    user1 = new com.User( "Jim", "Adkins", "jim@jimmyeatworld.net", "TheMiddle123" );
    user2 = new com.User( "Kevin", "Seconds", "kevin@7secondsband.com", "4AmInTexas" );

    pwStrength1 = application.objSecurity.checkPasswordStrength( user1.getPassword() );
    pwStrength2 = application.objSecurity.checkPasswordStrength( user2.getPassword() );
</cfscript>

<cfoutput>
    <h1>New User Accounts</h1>

    <p>#user1.getFirstName()#'s password is #pwStrength1# strength.</p>
    <p>#user2.getFirstName()#'s password is #pwStrength2# strength.</p>
</cfoutput>
