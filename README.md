# terraform-element
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
