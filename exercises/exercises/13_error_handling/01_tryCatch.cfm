<cfscript>
  
    sql = 'SELECT * FROM tUsers';
    allUsers = queryExecute(sql);

    writeDump(allUsers);

</cfscript>
<!--- 
<cftry>
    <cfquery name="qAllUsers">
        SELECT *
        FROM tUser
    </cfquery>
    <cfdump var="#qAllUsers#" />
    <cfcatch type="database" name="e">
        <p>A database error occured.</p>
        <cfdump var="#e#">
    </cfcatch>
    <cfcatch type="expression" name="e">
        <p>An expression error occured.</p>
        <cfdump var="#e#">
    </cfcatch>
    <cfcatch type="any" name="e">
        <p>An error occured.</p>
        <cfdump var="#e#">
    </cfcatch>
</cftry> --->
