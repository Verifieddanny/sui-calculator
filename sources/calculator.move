module calculator::calculator;

fun add(a: u8, b: u8): u32 {
    (a as u32) + (b as u32)
}

fun subtract(a: u8, b: u8): u32 {
    if (a < b) {
        0 // Prevent negative results
    } else {
        (a as u32) - (b as u32)
    }
}

fun multiply(a: u8, b: u8): u32 {
    (a as u32) * (b as u32)
}

fun divide(a: u8, b: u8): u32 {
    if (b == 0) {
        0
    } else {
        (a as u32) / (b as u32)
    }
}

public fun answer(a: u16, b: u16): (u64, u64, u64, u64) {
    let sum = add(a as u8, b as u8);
    let diff = subtract(a as u8, b as u8);
    let prod = multiply(a as u8, b as u8);
    let quot = divide(a as u8, b as u8);

    (sum as u64, diff as u64, prod as u64, quot as u64)
}