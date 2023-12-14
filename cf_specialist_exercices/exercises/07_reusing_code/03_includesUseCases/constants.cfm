<cfinclude template="includes/order_status_constants.cfm" />
<cfinclude template="includes/company_contact_info.cfm" />

<!---
Running this page in the browser throws an error as the getOrderStatus() function is not defined anywhere.
This file is for demonstration only.
--->
<cfset myOrderStatus = getOrderStatus( OrderID=8837 ) />

<cfoutput>
	<h1>Orders</h1>

	<cfif myOrderStatus eq ORDER_COMPLETED>
		<p>Your order has been completed! Thank you for your business!</p>
	<cfelseif myOrderStatus eq ORDER_REJECTED>
		<p>
		   We're sorry, there was a problem with your order. Please 
		   contact #CUSTOMER_SERVICE_MANAGER# at #CUSTOMER_SERVICE_PHONE_NUMBER#
		   for more information.
		</p>
	</cfif>
</cfoutput>