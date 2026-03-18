import Foundation

func bench() -> Void {
    var number = 0;
    let start = Date().timeIntervalSinceReferenceDate;
    for i in 1...1000000000 {
        number += 1;
    }
    print((Date().timeIntervalSinceReferenceDate - start) * 1000);
    print(number);
}

bench();

// ~8000ms in CompilerExplorer!? - Swift x86-64 swiftc 5.10