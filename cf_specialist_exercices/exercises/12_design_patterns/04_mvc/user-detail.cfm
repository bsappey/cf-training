<cfset qUserDetails = application.userModel.select( url.UserID ) />

<cfoutput>
    <h1>User Details</h1>

    <form name="frmUser" method="post" action="./controllers/UserController.cfc?method=saveUser">
        <input type="hidden" name="UserID" value="#qUserDetails.UserID#" />

        <div>
            <label for="FirstName">First Name</label>
            <input type="text" name="FirstName" value="#qUserDetails.FirstName#" />
        </div>
        <div>
            <label for="LastName">Last Name</label>
            <input type="text" name="LastName" value="#qUserDetails.LastName#" />
        </div>
        <div>
            <label for="Email">Email</label>
            <input type="email" name="Email" value="#qUserDetails.Email#" />
        </div>
        <div>
            <label for="Password">Password</label>
            <input type="password" name="Password" value="#qUserDetails.Password#" />
        </div>
        <div>
            <input type="submit" value="Save User" />
        </div>
    </form>

</cfoutput>