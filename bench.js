function bench() {
    let number = 0
    let start = Date.now()

    for(var i = 0; i < 1000000000; i++) number++;

    console.log(Date.now() - start);
    console.log(number);
}

bench()

// 800-1300 ms in CompilerExplorer - Javascript V8 11.3
// ~740ms on my machine
