# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stockpicker(prices)
  day_start = nil
  day_end = nil
  max_profit = nil
  prices.each_with_index { |price_s, index_s|
    next_day = index_s + 1
    if next_day < prices.length
      prices[next_day..].each_with_index { |price_e, index_e|
      if (max_profit == nil) or (price_e - price_s > max_profit)
        max_profit = price_e-price_s
        day_start = index_s
        day_end = index_e + index_s + 1
      end
    }
    end
  }
  return [day_start,day_end]
  # for each day, look at the rest of the array and find the highest number left
  # calc profit
  # if profit is higher update what should be returned
end

print stockpicker([17,3,6,9,15,8,6,1,10])