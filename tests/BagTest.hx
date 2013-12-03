
import structural.Bag;
import mohxa.Mohxa;

typedef Custom = {
    var name : String;
    var value : String;
}

class BagTest extends Mohxa {

    public function new() {

        super();

        var count = 16;

        describe('Bag Test', function(){

            log('we will create 3 different bags');
            log('one with ints, one with strings and one a custom typedef');

            var int_bag : Bag<Int>;
            var string_bag : Bag<String>;
            var custom_bag : Bag<Custom>;

            before(function(){

                log('creating ... ');

                int_bag = new Bag<Int>();
                string_bag = new Bag<String>();
                custom_bag = new Bag<Custom>();

            });

             it('should each start with a 0 length', function(){
                equal(int_bag.length, 0, 'int bag');
                equal(string_bag.length, 0, 'string bag');
                equal(custom_bag.length, 0, 'custom bag');
            });

            describe('Population', function() {

                log('now we can populate the lists, we are using ' + count + 'items');

                        // fill the int_bag with random integers
                    for(i in 0 ... count) {
                        int_bag.add( i );
                    }
                        //fill the string_bag with random strings
                    for(i in 0 ... count) {
                        string_bag.add( Std.string(i) );
                    }
                        //fill the custom_bag with various name brand goods
                    for(i in 0 ... count) {
                        custom_bag.add({ name:Std.string(i), value: ' > ' + Std.string( Std.random(count) ) });
                    }

                it('should have a length of ' + count, function(){
                    equal(int_bag.length, count, 'int bag');
                    equal(string_bag.length, count, 'string bag');
                    equal(custom_bag.length, 0, 'custom bag');
                });

            }); //Population

            describe('Ordering', function(){
                
                log('ordering needs to be LIFO, so the higher numbers should be up top');
                log('i.e ints : ' + int_bag.toArray());
                log('i.e strings : ' + string_bag.toArray());
                log('etc..');

                
                var int_passes = true;
                var string_passes = true;
                var custom_passes = true;

                var top_int = int_bag.toArray()[0];
                for(int in int_bag) {
                    if(top_int < int) {
                        int_passes = false;
                    }
                }

                var top_string = string_bag.toArray()[0];
                for(str in string_bag) {
                    if(Std.parseInt(top_string) < Std.parseInt(str)) {
                        string_passes = false;
                    }
                }

                var top_custom = custom_bag.toArray()[0];
                for(ci in custom_bag) {
                    if(Std.parseInt(top_custom.name) < Std.parseInt(ci.name)) {
                        custom_passes = false;
                    }
                }

                it('should be in the correct order', function(){
                    equal(int_passes, true, 'int bag');
                    equal(string_passes, false, 'string bag');
                    equal(custom_passes, true, 'custom bag');
                });

            }); //Ordering
            
            after(function(){

                log('cleaning up ... ');

                int_bag = null;
                string_bag = null;
                custom_bag = null;
                
            });


        }); //Bag Test

        run();

    } //BagTest

    static function main() {

        new BagTest();

    } //main()

} //BagTest