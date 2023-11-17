<cfinclude template="includes/incHeader.cfm" />

<cfset qOrders = QueryExecute( "SELECT * FROM tOrders", {}, {datasource="cfTrainingDsn"} ) />

<cfoutput>
	<h1>Orders</h1>

	<table>
		<thead>
			<tr>
				<th>Order ##</th>
				<th>Date</th>
				<th>Customer Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<cfloop query="qOrders">
				<tr>
					<td>#qOrders.OrderID#</td>
					<td>#qOrders.OrderDate#</td>
					<td>#qOrders.CustomerName#</td>
					<td>#DollarFormat( qOrders.Price )#</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
</cfoutput>

<cfinclude template="includes/incFooter.cfm" />

