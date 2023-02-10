# terraform-element
lookup(map, key, default)
----------------------------------------------------
element(list, index)
---------------------------------------------------
element retrieves a single element from a list.

element(list, index)

The index is zero-based. This function produces an error if used with an empty list. The index must be a non-negative integer.




----------------------------------------------------------------------------------------------
> element(["a", "b", "c"], 1)

b

If the given index is greater than the length of the list then the index is "wrapped around" by taking the index modulo the length of the list:

> element(["a", "b", "c"], 3)

a

To get the last element from the list use length to find the size of the list (minus 1 as the list is zero-based) and then pick the last element:

> element(["a", "b", "c"], length(["a", "b", "c"])-1)

c
---------------------------------------------------------------------------------------------------

Element retrieves a single element from a list.

element(list, index)
The index is zero-based. This function produces an error if used with an empty list. The index must be a non-negative integer. Use the built-in index syntax list[index] in most cases. Use this function only for the special additional “wrap-around” behavior described below. Source: element - Functions - Configuration Language - Terraform by HashiCorp.

Now, this is one of the examples that is shown in the function documentation:

> element(["a", "b", "c"], 1)
b
The function will select the property of an array based on the index number. In most programming languages when reaching a number that is out of the range of the array, you will receive an exception. But the element function will continue from the first item in the array. This will result in the following behavior.

Index	Array

0	a

1	b

2	c

3	a

4	b

5	c

6	a

----------------------------------------------------------------------------------------------------
