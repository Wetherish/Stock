const std = @import("std");

const OrderType = enum {
    buy,
    sell,

    pub fn asString(self: OrderType) []const u8 {
        return switch (self) {
            .buy => "Buy",
            .sell => "Sell",
        };
    }
};

const Order = struct {
    id: u32,
    orderType: OrderType,

    pub fn init(id: u32, orderType: OrderType) Order {
        return Order{
            .id = id,
            .orderType = orderType,
        };
    }

    pub fn draw(self: Order) void {
        std.debug.print("Order: {any}\n", .{self});
        std.debug.print("Type: {s}\n", .{self.orderType.asString()});
    }
};
