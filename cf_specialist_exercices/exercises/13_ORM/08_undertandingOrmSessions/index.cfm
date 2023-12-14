<cfscript>
	articleSql = 'SELECT * from tArticles';
	allArticles = queryExecute(articleSql);

	writeDump(allArticles);

	// Create a new article
	// newArticle = EntityNew('Article', {'title' = 'Title of Article 4', 'content' = 'Content of Article 4', 'dateCreated'= now(), 'isPublished' = false});
	// EntitySave(newArticle);
	// Modify an existing article
	// oneArticle = entityLoadByPK('Article', 1);
	// oneArticle.setContent("some new content");
	// EntitySave(oneArticle);
	// Delete an existing article
	// anotherArticle = entityLoadByPK('Article', 2);
	// entityDelete(anotherArticle);

	// dump all article entities
	allArticleEntities = EntityLoad('Article');
	writeDump(var="#allArticleEntities#", expand=false);

	// Get all articles using a regular query
	allArticlesAfterNew = queryExecute(articleSql);
	writeDump(allArticlesAfterNew);
</cfscript>
