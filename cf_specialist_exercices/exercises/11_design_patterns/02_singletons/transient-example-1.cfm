<cfscript>
    user1 = new com.User( "Walter", "Schreifels", "wally@quicksand.net", "Start2day" );
    user2 = new com.User( "Ray", "Cappo", "ray@oftoday.net", "YouthOf2Day" );
    user3 = new com.User( "Sammy", "Siegler", "sammy@siegler.net", "R1valSch00ls" );

    objSecurity = new com.SecurityUtils();

    pwStrength1 = objSecurity.checkPasswordStrength( user1.getPassword() );
    pwStrength2 = objSecurity.checkPasswordStrength( user2.getPassword() );
    pwStrength3 = objSecurity.checkPasswordStrength( user3.getPassword() );
</cfscript>

<cfoutput>
    <h1>Marketing Team Users</h1>

    <p>#user1.getFirstName()#'s password is #pwStrength1# strength.</p>
    <p>#user2.getFirstName()#'s password is #pwStrength2# strength.</p>
    <p>#user3.getFirstName()#'s password is #pwStrength3# strength.</p>
</cfoutput>
