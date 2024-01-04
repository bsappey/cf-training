<cfoutput>
    <h1>Factory Example 1</h1>

    <cfset objFactory = new model.SQLFactory( "derby" ) />
    <cfset objOrder = objFactory.makeMyObject( "Order" ) />

    <cfdump var="#objOrder#" />

</cfoutput>