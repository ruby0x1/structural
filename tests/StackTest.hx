
import structural.Stack;
import mohxa.Mohxa;

class StackTest extends Mohxa {

    public function new() {

        super();

        describe('Stack Test', function(){

            log('we will create 2 different stacks');
            log('one with ints, one with strings');

            var int_stack : Stack<Int>;
            var string_stack : Stack<String>;

            before(function(){

                log('creating ... ');

                int_stack = new Stack<Int>();
                string_stack = new Stack<String>();

            });

             it('should each start with a 0 length', function(){
                equal(int_stack.length, 0, 'int stack');
                equal(string_stack.length, 0, 'string stack');
            });

            describe('Push and Pop', function() {

                log('now we can populate the stacks.');

                log('for the int stack, we push 5 items, popping the fourth one.');
                    int_stack.push(1);
                    int_stack.push(2);
                    int_stack.push(3);
                    int_stack.push(4);
                    int_stack.pop();
                    int_stack.push(5);

                it('should have a length of 4', function(){
                    equal(int_stack.length, 4);
                });

                it('should match [5,3,2,1] LIFO', function(){
                    equal(int_stack.toArray().toString(), [5,3,2,1].toString());
                });

                log('for the string stack, we push "to be or not to be" and pop until we get "to be or not" ');

                    string_stack.push('to');
                    string_stack.push('be');
                    string_stack.push('or');
                    string_stack.push('not');
                    string_stack.push('to');
                    string_stack.push('be');

                string_stack.pop();
                string_stack.pop();

                it('should have a length of 4', function(){
                    equal(string_stack.length, 4);
                });

                it('should equal "not or be to" because of LIFO', function(){
                    equal('not or be to', string_stack.toArray().join(' '));
                });

            }); //Push and Pop

            after(function(){

                log('cleaning up ... ');

                int_stack = null;
                string_stack = null;

            });


        }); //Bag Test

        run();

    } //BagTest

    static function main() {

        new StackTest();

    } //main()

} //BagTest