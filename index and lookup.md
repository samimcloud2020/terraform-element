index <----------finds the index for a particular element value.
lookup <-----------retrieves a value from a map given its key.
  
  ------------------------------------------------------------------------------------------
  index finds the element index for a given value in a list.

index(list, value)

    The returned index is zero-based. This function produces an error if the given value is not present in the list.

Examples
> index(["a", "b", "c"], "b")
      
1
     
      ----------------------------------------------------------------------------------------
      lookup retrieves the value of a single element from a map, given its key. If the given key does not exist, the given default value is returned instead.

lookup(map, key, default)

For historical reasons, the default parameter is actually optional. However, omitting default is deprecated since v0.7 because that would then be equivalent to the native index syntax, map[key].

Examples
> lookup({a="ay", b="bee"}, "a", "what?")
      
ay
> lookup({a="ay", b="bee"}, "c", "what?")
      
what?
