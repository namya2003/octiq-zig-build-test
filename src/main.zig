const std = @import("std");

pub fn add(a: i64, b: i64) i64 {
    return a + b;
}

pub fn sub(a: i64, b: i64) i64 {
    return a - b;
}

pub fn div(a: i64, b: i64) i64 {
    return @divTrunc(a, b);
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const out = std.io.getStdOut().writer();
    try out.print("{d}\n", .{add(2, 3)});
}
