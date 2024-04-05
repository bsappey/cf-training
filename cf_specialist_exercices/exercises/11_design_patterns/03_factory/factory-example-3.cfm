<cfscript>
    qUsers  = application.userModel.select();
    qOrders = application.orderModel.select();
</cfscript>

<cfoutput>
    <h1>Factory Example 3</h1>

    <h2>Users</h2>
    <table border="1">
        <thead>
            <th>First</th>
            <th>Last</th>
            <th>Email</th>
        </thead>
        <tbody>
            <cfloop query="qUsers">
                <tr>
                    <td>#qUsers.FirstName#</td>
                    <td>#qUsers.LastName#</td>
                    <td>#qUsers.Email#</td>
                </tr>
            </cfloop>
        </tbody>
    </table>

    <h2>Orders</h2>
    <table border="1">
        <thead>
            <th>Customer</th>
            <th>Order Date</th>
            <th>Amount</th>
        </thead>
        <tbody>
            <cfloop query="qOrders">
                <tr>
                    <td>#qOrders.CustomerName#</td>
                    <td>#qOrders.OrderDate#</td>
                    <td>#qOrders.Price#</td>
                </tr>
            </cfloop>
        </tbody>
    </table>

</cfoutput>