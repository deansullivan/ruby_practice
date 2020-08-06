# Finds the biggest margin between two numbers where buy comes after sell

def stock_picker(array)

    buy = sell = profit = final_buy_price = final_sell_price = final_profit = 0
    buy_array = Array.new # Used to make sure that the buy date doesn't extend past the sell date
    buy_check = 0
  
    array.each do |day|
      sell = day if day != array[0]
      buy_array = array[0..buy_check]
  
      buy_array.each do |buy_now|
  
        if buy != sell
          buy = buy_now
          profit = sell - buy
          if profit > final_profit
            final_sell_price = sell
            final_buy_price = buy
            final_profit = profit
          end
        end
        buy_check += 1
      end
    end
  
  p "You should buy at #{final_buy_price},"
  p "Sell at #{final_sell_price}."
  p "For a profit of #{final_profit}"
  
  end
  
  stock_picker([17,9,15,8,10,16,5,3,9])