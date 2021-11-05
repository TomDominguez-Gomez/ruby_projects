def stock_picker(prices)
	min_price = prices.each_with_index.min[1]
	max_price = prices.each_with_index.max[1]
	if min_price == prices.length-1 
		return "waiting for stock data"
	else 
		return "[#{min_price}, #{min_price > max_price ? prices.length-1 : max_price}]"
	end
end

print stock_picker([17,13,6,9,15,8,6,3,1])