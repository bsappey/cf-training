<cfscript>
    sqlMovies = 'SELECT MovieID, MovieName, ReleaseDate, Rating FROM tMovies';
    sqlUsers = 'SELECT UserID, Firstname, Lastname Email FROM tUsers';

    qMovies = queryExecute(sqlMovies);
    qUsers = queryExecute(sqlUsers);

    writeDump(qMovies);
    writeDump(qUsers);
    // xlsFileScript = getDirectoryFromPath(getCurrentTemplatePath()) & "sampleScript.xls";

    // workbook = spreadsheetNew('Movies');
    // spreadsheetCreateSheet(workbook, 'Users');
 
    // spreadsheetAddRow(workbook, qMovies.columnList)
    // spreadsheetAddRows(workbook, qMovies);
    // spreadsheetSetActiveSheet(workbook, 'Users');
    // spreadsheetAddRow(workbook, qUsers.columnList)
    // spreadsheetAddRows(workbook, qUsers);

    // spreadsheetWrite(workbook, xlsFileScript);

</cfscript>
<!---
<cfset xlsFileTag = getDirectoryFromPath(getCurrentTemplatePath()) & "sampleTag.xls" />
<cfset moviesSheet = spreadsheetNew('Movies') />
<cfset usersSheet = spreadsheetNew('Users') />
--->

<!---
<cfset spreadsheetAddRow(moviesSheet, qMovies.columnList) />
<cfset spreadsheetAddRows(moviesSheet, qMovies) />
<cfset spreadsheetAddRow(usersSheet, qUsers.columnList) />
<cfset spreadsheetAddRows(usersSheet, qUsers) />
--->

<!---
<cfspreadsheet action="write" filename="#xlsFileTag#" name="moviesSheet" />
<cfspreadsheet action="update" filename="#xlsFileTag#" name="usersSheet" />
--->
 