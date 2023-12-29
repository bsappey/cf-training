component accessors="true"
{
	property name="provider" type="string";
	property name="copay" type="numeric";
	property name="deductible" type="numeric";

	public any function init( provider, copay, deductible )
	{
		setProvider( arguments.provider );
		setCopay( arguments.copay );
		setDeductible( arguments.deductible );

		return this;
	}
	
	public void function showPlanDetails()
	{
		WriteOutput( "<p>Provider: #getProvider()#</p>" );
		WriteOutput( "<p>Copay: #DollarFormat( getCopay() )#</p>" );
		WriteOutput( "<p>Deductible: #DollarFormat( getDeductible() )#</p>" );
	}
}