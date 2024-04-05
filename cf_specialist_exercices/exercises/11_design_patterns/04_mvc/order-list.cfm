<cfset qOrders = application.orderModel.select() />

<cfoutput>
    <h1>Orders</h1>

    <table>
        <thead>
            <tr>
                <th>Order ##</th>
                <th>Customer Name</th>
                <th>Date</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            <cfloop query="qOrders">
                <tr>
                    <td><a href="order-detail.cfm?OrderID=#qOrders.OrderID#">#qOrders.OrderID#</a></td>
                    <td>#qOrders.CustomerName#</td>
                    <td>#qOrders.OrderDate#</td>
                    <td>#qOrders.Price#</td>
                </tr>
            </cfloop>
        </tbody>
    </table>

</cfoutput>