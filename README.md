structural
==========

An unencumbered, generic haxe data structures library.


##Goals

- Single Structures without dependency on entire library
- Good coverage of generic data structures
- Based on common algorithms used in games and applications, found online

More tests and classes to come.

#Current Structures

- Bag
- Stack
- Pool
- Heap (third party)
- Binary Search Tree
- Balanced Binary Search Tree (Red/Black)

&nbsp;

 ---

&nbsp;

- Red/black self balancing Binary Search Tree ([read more](http://en.wikipedia.org/wiki/Self-balancing_binary_search_tree) and [read more](http://en.wikipedia.org/wiki/Red%E2%80%93black_tree))

```haxe
    class Example {

        function compare( item1:Int, item2:Int ) {
            if(item1 == item2) return 0;
            if(item1 < item2) return -1;
            return 1;
        }

        function explain() {
            var tree = new BalancedBST<Int, SomeValue>( compare );
            tree.insert( 3, new SomeValue() );

            for(some_value_instance in tree) {
                //use instance
            }
        }
    }
```

- Unbalanced Binary Search Tree ([read more](http://en.wikipedia.org/wiki/Binary_search_tree))

```haxe
    class Example {

        function compare( item1:Int, item2:Int ) {
            if(item1 == item2) return 0;
            if(item1 < item2) return -1;
            return 1;
        }

        function explain() {
            var tree = new BST<Int, SomeValue>( compare );
            tree.insert( 3, new SomeValue() );

            for(some_value_instance in tree) {
                //use instance
            }
        }
    }
```

- Stack ([read more](http://en.wikipedia.org/wiki/Stack_(abstract_data_type)))

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

- Bag ([read more](http://en.wikipedia.org/wiki/Multiset))

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

- Pool ([read more](http://en.wikipedia.org/wiki/Pooling_(resource_management)))

```haxe
    class Example {
        function example() {

            var pool = new Pool<Sprite>(20, create_sprite, false);

                //to use the next pooled item, 
                //looping around to index 0 when end of pool is reached.
            var next = pool.get();

        }

        function create_sprite(index:Int, total:Int) {
                //generate a new instance,
                //called a maximum of `total` times (from pool size)
            return new Sprite();
        }

    }
```


MIT License (see LICENSE.md file for more details)
