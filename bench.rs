
use std::time::{SystemTime};

#[unsafe(no_mangle)]
pub fn bench() {
    let mut number:i64 = 0;
    let start = SystemTime::now();
    for i in 0..1000000000 {
        number += 1;
    }
    let diff = SystemTime::now().duration_since(start);
    println!("{diff:?}");
    println!("{number}");
}

// If you use `main()`, declare it as `pub` to see it in the output:
pub fn main() { 
    bench();
}

// ~13.08s in CompilerExplorer - Rust rustc 1.94.0
// ~4.94s on my machine - Rust rustc 1.94.0