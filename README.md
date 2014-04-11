structural
==========

An unencumbered, generic haxe data structures library.


##Goals

- Single Structures without dependency on entire library
- Wide coverage of generic data structures 
- Largely based on algorithms from http://algs4.cs.princeton.edu/home/

More tests and classes to come.

#Current Structures

- Bag
- Stack
- BinarySearchTree
- BalancedBinarySearchTree (Red/Black)


 ---

 
- Red/black self balancing Binary Search Tree ([read more](http://algs4.cs.princeton.edu/33balanced/))

```haxe
	class Example {
		function compare( item1:Int, item2:Int ) {
			if(item1 == item2) return 0;
			if(item1 < item2) return -1;
			return 1;
		}
		
		function explain() {
			var tree = new BalancedBinarySearchTree<Int, SomeValue>( compare );
			tree.insert( 3, new SomeValue() );

			for(some_value_instance in tree) {
				//use instance
			}
		}
	}
```

- Unbalanced Binary Search Tree ([read more](http://algs4.cs.princeton.edu/32bst/))

```haxe
	class Example {

		function compare( item1:Int, item2:Int ) {
			if(item1 == item2) return 0;
			if(item1 < item2) return -1;
			return 1;
		}
		
		function explain() {
			var tree = new BalancedBinarySearchTree<Int, SomeValue>( compare );
			tree.insert( 3, new SomeValue() );

			for(some_value_instance in tree) {
				//use instance
			}
		}
	}
```

- Stack ([read more](http://algs4.cs.princeton.edu/13stacks/))

```haxe
	class Example {
		function explain() {
			var stack = new Stack<String>();
				stack.push( 'item1' );
				stack.push( 'item2' );
				stack.push( 'item3' );

			for(item in stack) {
				trace('string is : ' + item );
			}
		}
	}
```

- Bag ([read more](http://algs4.cs.princeton.edu/13stacks/))

```haxe
	class Example {
		function example() {
			var bag = new Bag<String>();
				bag.add( 'item1' );
				bag.add( 'item2' );
				bag.add( 'item3' );

			for(item in bag) {
				trace('string is : ' + item );
			}
		}
	}
```


MIT License (see LICENSE file for more)
