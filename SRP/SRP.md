The name itself suggest that the “class should be having one and only one responsibility”. What does it mean? Well let’s take the class A which does the following operations.

We will check following examples:
- AuthenticatesUser
- Student
- BlogService
- CarRentService

```
Why is the second example better? Because if you need to change the functionality of any part of the rent service, you work with a separate block of code that does just one action. It is easy to read or understand (if this code was written by others) and maintain such code, because parts of the service do not depend on each over.

Imagine any company. Why is there responsibility separation too? All the same: separating the workflow among multiple workers is much more effective than having it all done by one person. Each employee performs their specific duties.
```
