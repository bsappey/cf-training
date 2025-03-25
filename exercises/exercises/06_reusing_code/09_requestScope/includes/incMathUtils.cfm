<cfscript>

	CURRENT_SALES_TAX = 0.08;

	numeric function getSalesTax( required numeric price )
	{
		var tax = arguments.price * CURRENT_SALES_TAX;
		return tax;
	}


</cfscript>