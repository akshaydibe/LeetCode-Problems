class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var profit = 0
        var buyStock = Int.max

        for price in prices {
            buyStock = min(buyStock, price)
            profit = max(profit, price - buyStock)
        }

        return profit
        
    }
}