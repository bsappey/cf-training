<cfscript>
    try{
        sql = 'SELECT * FROM tUsers';
        allUsers = queryExecute(sql);

        throw (type="custom", message="Custom Message", detail="Lots and lots of details on the exception", errorCode="custom.error.code");
        writeDump(allUsers);
    } catch (database e){
        writeOutput('<p>A database error occured.</p>');
        rethrow;
    } catch (custom e){
        writeOutput('<p>A custom error occured.</p>');
        rethrow;
    } catch (expression e){
        writeOutput('<p>An expression error occured.</p>');
        rethrow;
    } catch (any e) {
        writeOutput('<p>An error occured.</p>');
        rethrow;
    }
</cfscript>>