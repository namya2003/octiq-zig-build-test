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

pub fn main() void {
    const total = add(2, 3);
    if (total == 0) unreachable;
}
