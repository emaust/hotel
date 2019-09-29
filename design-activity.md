Evaluation Responsibility:

1. A includes the classes CartEntry, ShoppingCart, and Order. B has the same classes.

2. CartEntry is a class that initializes unit_price and quantity. Shopping cart initializes an array of entries, and Order creates a new instance of ShoppingCart and stores it in the instance variable cart.
In implementation A, CartEntry unit_price and quantity are shared with Order to return total price. Shopping cart shares entries with Order, which is used in the method total_price. Order creates a new instance of shopping cart. In implementation B, Order relies on the information stored in CartEntry and ShoppingCart to make a new instance of cart. In Implementation B, the methods for that class are created within the class then accessed by creating an instance of that class.

3. In Implementation A, CartEntry has no methods, Shopping cart has no methods, and Order has a total price method using the instance variables from CartEntry, and the instance of cart from Order. In Implementation B, CartEntry has a method of price, calculated by multiplying the instances of unit and quantity. Shopping cart has a separate method for price, which adds the price of each entry and creates a total sum for entries. Order has the method total_price which returns the price for an instance of cart, then returns a total price including sales tax. The second implementation uses instances of another class rather than instance variables stored within that class.

4. For Implementation A, the price is computed in Order. Total_price is directly manipulating instance variable of other classes. In Implementation B, each lower level class creates its own instance of price.

5. For items bought in bulk, I think Implementation B would be easier to modify, because price could be altered in the lower level classes fairly easily rather than having to change the entire method in Implementation A's Order class. 

6. The implementation that better adheres to the single responsibility principle (and is more loosely coupled) is Implementation B.

