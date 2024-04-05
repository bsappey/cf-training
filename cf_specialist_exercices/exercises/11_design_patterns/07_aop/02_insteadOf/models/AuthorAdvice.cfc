component implements="wirebox.system.aop.MethodInterceptor"
{
	public any function init()
	{
		return this;
	}

	function invokeMethod( required any invocation ) output="true"
	{
		var output = "";

		output = arguments.invocation.getTarget().checkPermissions();

		output &= arguments.invocation.proceed();

		output &= arguments.invocation.getTarget().sendDetailsEmail();

		return output;
	}

}