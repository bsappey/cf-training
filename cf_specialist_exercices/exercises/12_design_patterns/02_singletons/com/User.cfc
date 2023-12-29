component accessors="true"
{
    property name="FirstName" type="string";
    property name="LastName" type="string";
    property name="Email" type="string";
    property name="Password" type="string";

    public any function init( string firstNamePassedIn, string lastNamePassedIn, string emailPassedIn, string passwordPassedIn )
    {
        setFirstName( arguments.firstNamePassedIn );
        setLastName( arguments.lastNamePassedIn );
        setEmail( arguments.emailPassedIn );
        setPassword( arguments.passwordPassedIn );

        return this;
    }

    
}