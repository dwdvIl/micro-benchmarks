import time


def bench():
    number = 0
    start = time.monotonic()

    for i in range(1000000000):
        number += 1

    print((time.monotonic() - start) * 1000)
    print(number)

bench()

# ~40000ms on my machine (CompilerExplorer: Killed - processing time exceeded) - Python 3.12