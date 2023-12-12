

<cfpdf action="read" source="#expandPath('saved-docs/aboutCfDocument.pdf')#" name="pdfVariable" />


<cfdump var="#pdfVariable#" />

<!---
///////////////////////////////////////////////////
//Actions of <cfpdf>
///////////////////////////////////////////////////


<cfpdf action="archive" />
<cfpdf action="addAttachement" />
<cfpdf action="addStamp" />
<cfpdf action="addWatermark" />
<cfpdf action="deletePages" />
<cfpdf action="export" />
<cfpdf action="getInfo" />
<cfpdf action="import" />
<cfpdf action="merge" />
<cfpdf action="protect" />
<cfpdf action="removewatermark" />
<cfpdf action="sanitize" />
<cfpdf action="setInfo" />
<cfpdf action="sign" />
<cfpdf action="thumbnail" />
<cfpdf action="write" />
<cfpdf action="optimize" />
<cfpdf action="extracttext" />
<cfpdf action="extractimage" />
<cfpdf action="addheader" />
<cfpdf action="addfooter" />
<cfpdf action="removeheaderfooter" />
<cfpdf action="transform" />
<cfpdf action="unsign" />
<cfpdf action="validatesignature" />
<cfpdf action="redact" />
--->