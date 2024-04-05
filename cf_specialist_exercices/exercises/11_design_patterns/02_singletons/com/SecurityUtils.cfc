component 
{
    public any function init()
    {
        return this;
    }

    public boolean function checkIfUserExists( string email, string password )
    {
        var rslt  = false;
        var qUser = queryExecute( "SELECT Email, Password 
                                   FROM tUsers 
                                   WHERE Email = :email AND Password = :password", 
                                {
                                    email    = { value=arguments.email, cfsqltype="varchar" },
                                    password = { value=arguments.password, cfsqltype="varchar" }
                                }
        );

        if( qUser.recordCount gt 0 )
        {
            rslt = true;
        }

        return rslt;
    }

    public string function checkPasswordStrength( string password )
    {
        if( len( arguments.password ) lt 10 )
        {
            return "low";
        }

        // look for both lower and uppercase letters, and at least 1 numeric character
        if( REFind( "[a-z]+", arguments.password ) gt 0 
         && REFind( "[A-Z]+", arguments.password ) gt 0
         && REFind( "[0-9]+", arguments.password ) gt 0
          )
        {
            return "high";
        }
        else
        {
            return "medium";
        }
    }

}