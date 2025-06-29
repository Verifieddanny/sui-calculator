#[test_only]
module calculator::calculator_tests;
use calculator::calculator;
use std::debug;

#[test]
fun test_calculator() {
    debug::print(&b"Testing calculator module...".to_string());
    let (add, sub, mult, div) = calculator::answer(30, 15);
    debug::print(&b"Results:".to_string());
    debug::print(&b"Addition".to_string());
    debug::print(&add);
    debug::print(&b"Subtraction".to_string());
    debug::print(&sub);
    debug::print(&b"Multiplication".to_string());
    debug::print(&mult);
    debug::print(&b"Division".to_string());
    debug::print(&div);

}


