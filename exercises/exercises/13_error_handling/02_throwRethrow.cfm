<cfscript>
    try{
        sql = 'SELECT * FROM tUsers';
        allUsers = queryExecute(sql);

        //throw (type="custom", message="Custom Message", detail="Lots and lots of details on the exception", errorCode="custom.error.code");
        writeDump(allUsers);
    } catch (database e){
        writeOutput('<p>A database error occured.</p>');
        writedump(e);
    } catch (expression e){
        writeOutput('<p>An expression error occured.</p>');
        writedump(e);
    } catch (any e) {
        writeOutput('<p>An error occured.</p>');
        writedump(e);
    }
    

</cfscript>
<!--- 
<cftry>
    <cfquery name="qAllUsers">
        SELECT *
        FROM tUsers
    </cfquery>

    <cfthrow type="custom" message="Custom Message" detail="Lots and lots of details on the exception" errorcode="custom.error.code" />
    <cfdump var="#qAllUsers#" />
    <cfcatch type="database" name="e">
        <p>A database error occured.</p>
        <cfrethrow />
    </cfcatch>
    <cfcatch type="expression" name="e">
        <p>An expression error occured.</p>
        <cfrethrow />
    </cfcatch>
    <cfcatch type="custom" name="e">
        <cfoutput><p>#e.message#</p></cfoutput>
        <cfrethrow />
    </cfcatch>
    <cfcatch type="any" name="e">
        <p>An error occured.</p>
        <cfrethrow />
    </cfcatch>
</cftry> --->