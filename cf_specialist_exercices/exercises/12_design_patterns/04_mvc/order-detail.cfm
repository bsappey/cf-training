<cfset qOrderDetails = application.orderModel.select( url.orderID ) />

<cfoutput>
    <h1>Order ## #qOrderDetails.OrderID#</h1>

    <form method="post" action="./controllers/orderController.cfc?method=saveOrder">
        <input type="hidden" name="OrderID" value="#qOrderDetails.OrderID#" />
        <div>
            <label for="CustomerName">Customer</label>
            <input type="text" name="CustomerName" value="#qOrderDetails.CustomerName#" />
        </div>
        <div>
            <label for="OrderDate">Order Date</label>
            <input type="date" name="OrderDate" value="#qOrderDetails.OrderDate#" />
        </div>
        <div>
            <label for="Price">Amount</label>
            <input type="number" name="Price" value="#qOrderDetails.Price#" />
        </div>
        <div>
            <input type="submit" value="Save Order" />
        </div>
    </form>
</cfoutput>