<cfparam name="attributes.pageTitle" default="" type="string" />
<cfparam name="attributes.showMenubar" default="true" type="boolean" />

<cfif thistag.executionMode eq "start">
<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="assets/blog.css" type="text/css">
	<title>Vandelay Industries Blog</title>
</head>
<body>
	<div class="entire-grid">
		<div class="header-grid">
			<header class="company-name-header">Vandelay Industries Blog</header>
			<cfif attributes.showMenubar>
				<nav>
					<ul class="main-menu">
						<li><a href="index.cfm">Home</a></li>
						<li><a href="listEntries.cfm">List Entries</a></li>
						<li><a href="profile.cfm">Profile</a></li>
					</ul>

					<cfif session.loggedin>
						<div>
							Current User: #session.firstName# #session.lastName#
							<a href="controllers/userController.cfc?method=logoutUser">Logout</a>
						</div>
					</cfif>
				</nav>
			</cfif>
		</div>

		<article class="page-content-wrapper">
			<h1 class="page-title">#attributes.pageTitle#</h1>
</cfoutput>
</cfif>
	
<cfif thistag.executionMode eq "end">
<cfoutput>
		</article> <!-- .page-content-wrapper -->
		<footer>
			&copy; #Year( Now() )# #application.companyName#
		</footer>
	</div> <!-- /.entire-grid -->
</cfoutput>
</body>
</html>
</cfif>