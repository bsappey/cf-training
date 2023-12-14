<cfscript>
	cfdbinfo(type="tables", name="dbTables", pattern="T%");
	writeDump(dbTables);

	// article1 = EntityNew('Article');
	// article1.setTitle('Article 1 Title');
	// article1.setContent('Article 1 Content');
	// article1.setDateCreated(now());
	// article1.setIsPublished(false);
	// EntitySave(article1);

	// a2Props = {
	// 	title = 'Article 2 Title',
	// 	content = 'Article 2 Content',
	// 	dateCreated = now(),
	// 	isPublished = false
	// }
	// article2 = EntityNew('Article', a2Props);
	// EntitySave(article2);

	// cfdbinfo(type="columns", name="dbColumns", table="tArticles");
	// writeDump(dbColumns);

	// sql = 'SELECT * FROM tArticles';
	// allArticles = queryExecute(sql);
	
	// writeDump(allArticles);
</cfscript>
