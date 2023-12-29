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

    
}