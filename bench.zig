const std = @import("std");

export fn bench() void {
    var number: u64 = 0;
    const start = @as(i64, std.time.milliTimestamp());
    for (0..1000000000) |_| {
        number += 1;
    }
    const end = @as(i64, std.time.milliTimestamp()) - start;
    std.debug.print("{d}\n", .{end});
    std.debug.print("{d}\n", .{number});
}

pub fn main() void {
    bench();
}

// ~2600ms on my machine - Zig 0.14.0-dev.1586+41330c96a
