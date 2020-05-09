#Given an array of daily stock prices, return the best days to buy and sell
def stock_picker(stock_prices)
  output = [0, 0] #Start by buying/selling on Day 0 - no profit
  for i in 0..(stock_prices.length - 1) #Look through all buy/sell combos
    for j in (i + 1)..(stock_prices.length - 1)
      current_profit = stock_prices[j] - stock_prices[i]
      max_profit = stock_prices[output[1]] - stock_prices[output[0]]
      if current_profit > max_profit #Is this is the most profitable trade so far?
        output = [i ,j]
      end
    end
  end
  p output
end

stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_picker(stock_prices)