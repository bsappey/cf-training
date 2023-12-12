<cfscript>
	usersSql = 'SELECT * FROM tUsers';
	articleSql = 'SELECT * from tArticles';

	allUsers = queryExecute(usersSql);
	allArticles = queryExecute(articleSql);

	writeDump(allUsers);
	writeDump(allArticles);

	// oneUser = entityLoadByPK('User', 1);
	// allArticles = EntityLoad('Article');
	// oneUser.setArticles(allArticles);
	
	// article3 = EntityNew('Article');
	// article3.setTitle('Title of Article 3');
	// article3.setContent('Content of Article 3');
	// article3.setDateCreated(now());
	// article3.setIsPublished(false);
	// oneUser.addArticle(article3);
	// EntitySave(article3);
	// article2 = entityLoadByPK('Article', 2);
	// oneUser.removeArticle(article2);
	// writeDump(var="#oneUser#", expand=false);


	// oneArticle = entityLoadByPK('Article', 2);
	// writeDump(oneArticle.hasAuthor());
	// anotherUser = entityLoadByPK('User', 2);
	// oneArticle.setAuthor(anotherUser);
	// writeDump(var="#oneArticle#", expand=false);
	// writeDump(var="#anotherUser#", expand=false)
</cfscript>
