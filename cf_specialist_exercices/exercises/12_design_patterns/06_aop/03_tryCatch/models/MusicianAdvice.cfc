component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="true"
	{
		if( application.isProduction )
		{
			try
			{
				// run the actual query
				arguments.invocation.proceed();
			}
			catch (any ex) 
			{
				WriteOutput( "Sorry, something bad happened. I.T. has been notified." );
				abort;	
			}
		}
		else
		{
			// run the actual query
			arguments.invocation.proceed();
		}
	}
}
