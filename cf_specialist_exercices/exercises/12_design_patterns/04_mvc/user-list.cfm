<cfset qUsers = application.userModel.select() />

<cfoutput>
    <h1>Users</h1>

    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <cfloop query="qUsers">
                <tr>
                    <td><a href="user-detail.cfm?UserID=#qUsers.UserID#">#qUsers.UserID#</a></td>
                    <td>#qUsers.FirstName#</td>
                    <td>#qUsers.LastName#</td>
                    <td>
                        <a href="./controllers/userController.cfc?method=deleteUser&userID=#qUsers.UserID#"><button>Del</button></a>
                    </td>
                </tr>
            </cfloop>
        </tbody>
    </table>
</cfoutput>