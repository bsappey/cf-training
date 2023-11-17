<cfscript>

	CURRENT_SALES_TAX = 0.08;

	numeric function getSalesTax( required numeric price )
	{
		var tax = arguments.price * CURRENT_SALES_TAX;
		return tax;
	}

	numeric function getPackageVolume( required numeric height,
									   required numeric width,
									   required numeric depth )
	{
		var volume = arguments.height * arguments.width * arguments.depth;
		return volume;
	}

</cfscript>