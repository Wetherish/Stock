const std = @import("std");

pub const OrderSide = enum {
    Bid,
    Ask,
};

pub const Order = struct {
    orderID: u64,
    ownerID: u64,
    stockID: u64,
    price: u64,
    volume: u64,
    side: OrderSide,
    timestamp: i64,

    pub fn init(orderID: u64, ownerID: u64, stockID: u64, price: u64, volume: u64, side: OrderSide) Order {
        return Order{
            .orderID = orderID,
            .ownerID = ownerID,
            .stockID = stockID,
            .price = price,
            .volume = volume,
            .side = side,
            .timestamp = std.time.milliTimestamp(),
        };
    }
};
