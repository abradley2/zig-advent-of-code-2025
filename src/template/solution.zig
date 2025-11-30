const std = @import("std");
const lib = @import("lib");

test "partOne" {
    var output_buffer: [256]u8 = undefined;
    var output = std.Io.Writer.fixed(&output_buffer);
    const input =
        \\0
    ;
    try partOne(std.testing.allocator, input, &output);
    try std.testing.expectEqualStrings("0", output.buffered());
}

pub fn partOne(_: std.mem.Allocator, input: []const u8, output: *std.Io.Writer) !void {
    _ = try output.print("{s}", .{input});
}

test "partTwo" {
    var output_buffer: [256]u8 = undefined;
    var output = std.io.Writer.fixed(&output_buffer);
    const input =
        \\0
    ;
    try partTwo(std.testing.allocator, input, &output);
    try std.testing.expectEqualStrings("0", output.buffered());
}

pub fn partTwo(_: std.mem.Allocator, input: []const u8, output: *std.Io.Writer) !void {
    _ = try output.print("{s}", .{input});
}

pub fn main() !void {
    const input = @embedFile("./input.txt");

    try lib.runSolution("Part 1", input, partOne);
    try lib.runSolution("Part 2", input, partTwo);
}
