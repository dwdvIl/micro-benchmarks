using System;
using System.Diagnostics;

class Program
{
    static double bench() {
        int number = 0;
        Stopwatch stopwatch = new Stopwatch();
        stopwatch.Start();
        for(int i = 0; i < 1000000000; i++) number++;
        stopwatch.Stop();
        return stopwatch.Elapsed.TotalMilliseconds;
    }
    static void Main() {
        Console.WriteLine(bench());
    }
}

// 500 - 1000 ms in CompilerExplorer - .NET CoreCLR 8.0
// ~900ms on my machine