<cf_HeaderAndFooter pageTitle="Home">
	<cfoutput>

		<!--- <style>
			background-color: #encodeForCSS( url.color )#
		</style> --->

		<cfif IsDefined( "url.statusMsg" )>
			<div class="status-box">
				<cfoutput encodeFor="html">#url.statusMsg#</cfoutput>
				<!--- <cfoutput>#encodeForHTML( url.statusMsg )#</cfoutput> --->
			</div>
		</cfif>

		<!--- <script>
			var favoriteColor = '#encodeForJavaScript( form.color )#';
		</script> --->

		<!--- <p data-company="#encodeForHTMLAttribute( url.companyID )#">#application.companyName# Blog App.</p> --->
		<p>#application.companyName# Blog App.</p>
		<p>Please log in:</p>

		<!--- <form name="frmLogin" id="frmLogin" method="post" action="./controllers/userController.cfc?method=loginUser"> --->
		<form name="frmLogin" id="frmLogin" method="post" action="loginuser.cfm">
			<input name="token" type="hidden" value="#CSRFGenerateToken( forceNew=true )#">

			<div class="full-width">
				<label for="username">Username</label>
				<input type="email" name="username" id="username" value="" autofocus placeholder="Email">
			</div>
			<div class="full-width">
				<label for="password">Password</label>
				<input type="password" name="password" id="password" value="" placeholder="Password">
			</div>
			<div>
				<input type="submit" name="btnLogin" id="btnLogin" value="Log In">
			</div>
		</form>
	</cfoutput>
</cf_HeaderAndFooter>
