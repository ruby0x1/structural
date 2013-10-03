structural
==========

An unencumbered, generic haxe data structures library.


##Goals

- Single Structures without dependency on entire library
- Wide coverage of data structures 
- Largely based on algorithms derived from http://algs4.cs.princeton.edu/home/

Usage/tests/more classes to come.


#Current Structures

- Red/black self balancing Binary Search Tree ([read more](http://algs4.cs.princeton.edu/33balanced/))

```
	function compare( item1:Int, item2:Int ) {
		if(item1 == item2) return 0;
		if(item1 < item2) return -1;
		return 1;
	}
	
	var tree = new BalancedBinarySearchTree<Int, SomeValue>( compare );
	tree.insert( 3, new SomeValue() );

	for(some_value_instance in tree) {
		//use instance
	}
```

- Unbalanced Binary Search Tree ([read more](http://algs4.cs.princeton.edu/32bst/))

```
	function compare( item1:Int, item2:Int ) {
		if(item1 == item2) return 0;
		if(item1 < item2) return -1;
		return 1;
	}
	
	var tree = new BalancedBinarySearchTree<Int, SomeValue>( compare );
	tree.insert( 3, new SomeValue() );

	for(some_value_instance in tree) {
		//use instance
	}
```

- Stack ([read more](http://algs4.cs.princeton.edu/13stacks/))

```
	var stack = new Stack<String>();
		stack.push( 'item1' );
		stack.push( 'item2' );
		stack.push( 'item3' );

	for(item in stack) {
		trace('string is : ' + item );
	}
```


MIT License (see LICENSE file for more)
