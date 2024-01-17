component accessors="true"
{
    property name="authorName" type="string" default="Stephen King";
    property name="bookTitle" type="string" default="Christine";

	public any function init( string authorName = getAuthorName(), 
                              string bookTitle = getBookTitle() )
	{
        setAuthorName( arguments.authorName );
        setBookTitle( arguments.bookTitle );

		return this;
	}

	public string function displayAuthorDetails()
	{
       return "Name: #getAuthorName()# <br />Book: #getBookTitle()#";
	}

	public string function checkPermissions()
	{
		return "<div>Checking permissions of the logged in user...</div>";
	}

	public string function sendDetailsEmail()
	{
		return "<div>Email with details has been sent!</div>";
	}

}
