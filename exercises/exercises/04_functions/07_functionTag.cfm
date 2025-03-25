<cffunction name="computeAverage" returntype="numeric">
    <cfargument name="test1" type="numeric" required="true"/>
    <cfargument name="test2" type="numeric" required="true"/>
    <cfargument name="test3" type="numeric" required="true"/>
    
    <cfset var average = (arguments.test1 + arguments.test2 + arguments.test3) / 3 />

    <cfreturn average />
</cffunction>

<cfoutput>
    <p>The average is #computeAverage(55,89,12)#</p>
</cfoutput>