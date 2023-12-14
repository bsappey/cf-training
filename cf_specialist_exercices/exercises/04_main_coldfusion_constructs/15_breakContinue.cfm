<cfscript>
    WriteOutput("<ul>");
    for( i = 1; i <= 10; i++ )
	{
        //if(i == 5)
        //{
        //    break;
        //} 
        WriteOutput( "<li>I is : #i#</li>" );
	}
    WriteOutput("</ul>");



</cfscript>

<!---
<ul>
    <cfloop index="i" from="1" to="10">
        <cfif i EQ 5>
            
        </cfif>
        <cfoutput><li>I is #i#</li></cfoutput>
    </cfloop>
</ul>
--->


<p>Whatever comes after the loop</p>