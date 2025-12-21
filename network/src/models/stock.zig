const std = @import("std");

pub const Stock = struct {
    stockID: u64,
    symbol: []const u8,
    name: []const u8,
    issuesAvailable: u64,

    pub fn init(id: u64, sym: []const u8, name: []const u8, issues: u64) Stock {
        return Stock{
            .stockID = id,
            .symbol = sym,
            .name = name,
            .issuesAvailable = issues,
        };
    }

    pub fn getMarketCap(self: Stock, currentPrice: u64) u64 {
        return self.issuesAvailable * currentPrice;
    }

    pub fn issueMoreShares(self: *Stock, amount: u64) void {
        self.issuesAvailable += amount;
    }
};
