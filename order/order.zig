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
};
