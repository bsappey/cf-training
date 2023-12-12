<cfscript>

	application.totalTicketsSold = application.totalTicketsSold + myNewticketOrder;

	// lock scope="Application" timeout="10" type="Exclusive"
	// {
	// 	application.totalTicketsSold = application.totalTicketsSold + myNewticketOrder;
	// }

</cfscript>

<!--- 
One user on the site:
1. CF retrieves the value for application.totalTicketsSold.
2. CF adds that value to myNewticketOrder.
3. CF then combines those 2 as the -NEW- value for application.totalTicketsSold.
--->

<!--- 
Two users on the site at the same time:
1. User 1 starts to run that line of code. application.totalTicketsSold is 105.
2. User 2 starts to run that line of code. application.totalTicketsSold is 105. 
3. User 1 adds 5 tickets, making the total 110.
4. User 2 adds 2 tickets, making the total 107.
5. User 1 saves the new total back into application.totalTicketsSold as 110.
6. User 2 saves the new total back into application.totalTicketsSold as 107.
--->

<!--- 
Two users w/ locks in place: 
1. User 1 starts, hits the lock tag, and aquires the lock.
2. User 1 runs the line of code, application.totalTicketsSold is 105.
3. User 2 starts to run the code, hits the lock. Because User 1 has aquired the lock, User 2 waits here.
4. User 1 adds 5 tickets, making the total 110.
5. User 1 saves the new total back into application.totalTicketsSold as 110.
6. User 1 exits the lock and continues on with the rest of the request.
7. User 2 aquires the lock.
8. User 2 reads application.totalTicketsSold as 110.
9. User 2 adds 2 tickets, making the total 113.
10. User 2 saves the new total of 113 into application.totalTicketsSold.
11. User 2 exits the lock and continues on with the rest of the request.
--->

<!--- For more info:
https://helpx.adobe.com/coldfusion/developing-applications/developing-cfml-applications/using-persistent-data-and-locking/locking-code-with-cflock.html
--->
