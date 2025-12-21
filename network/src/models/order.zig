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
    orderID: u64,
    ownerID: u64,
    stockID: u64,
    price: u64,
    volume: u64,

    orderType: OrderType,

    timestamp: i64,

    pub fn init(id: u32, owner: u64, stock: u64, price: u64, volume: u64, orderType: OrderType) Order {
        return Order{
            .orderID = id,
            .ownerID = owner,
            .stockID = stock,
            .price = price,
            .volume = volume,
            .orderType = orderType,
            .timestamp = std.time.milliTimestamp(),
        };
    }

    pub fn draw(self: Order) void {
        std.debug.print("Order: {any}\n", .{self});
        std.debug.print("Type: {s}\n", .{self.orderType.asString()});
    }
};
