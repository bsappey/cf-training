component
{
    public any function init()
    {
        return this;
    }

    remote void function saveOrder( OrderID, CustomerName, Price, OrderDate )
    {
        application.orderModel.update( arguments.OrderID,
                                       arguments.CustomerName,
                                       arguments.Price,
                                       arguments.OrderDate );

        location( "../order-list.cfm", false );
    }
}