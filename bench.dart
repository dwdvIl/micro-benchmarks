void bench() {
    var number = 0;
    var stopwatch = Stopwatch();
    stopwatch.start();
    for(var i = 0; i < 1000000000; i++) number++;
    stopwatch.stop();
    print(stopwatch.elapsedMilliseconds);
    print(number);
}

int main(List<String> args) {
    bench();
    return 0;
}

// ~1500ms on my machine - Dart 3.2.2