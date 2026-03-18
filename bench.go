package main

import (
	"fmt"
	"time"
)

func bench() {
	var number uint64
	var start = time.Now()
	for i := 0; i < 1000000000; i++ {
		number++
	}
	fmt.Println(time.Now().Sub(start).Milliseconds())
	fmt.Println(number)
}

func main() {
	bench()
}

// 800 - 2000 ms in CompilerExplorer - Go x86-64 gc 1.22.1
// ~250ms on my machine
