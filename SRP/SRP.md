The name itself suggest that the “class should be having one and only one responsibility”. What does it mean? Well let’s take the class A which does the following operations.

- Open a database connection
- Fetch data from database
- Write the data in an external file
The issue with this class is that it handles lot of operations. Suppose any of the following change happens in future.

- New database
- Adopt ORM to manage queries on database
- Change in the output structure

So in all the cases the above class would be changed. Which might affect the implementation of the other two operations as well. So ideally according to SRP there should be three classes each having the single responsibility.
