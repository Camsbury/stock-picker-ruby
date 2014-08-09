def stock_picker(prices)
	if prices.is_a?(Array)
		buyset=false
		sellset=false
		picks=[-1,-1]
		for i in 0..prices.length-1 do
			if buyset==false
				picks[0]=prices[i]
				buy_candidate=prices[i]
				buyset=true
			end
			if prices[i]>buy_candidate
				if sellset==false
					picks[1]=prices[i]
					picks[0]=buy_candidate
					sellset=true
				elsif prices[i]>picks[1]
					picks[1]=prices[i]
					picks[0]=buy_candidate
				end
			end
			if prices[i]<picks[0]
				buy_candidate=prices[i]
			end
			if picks[1]>-1
				if (prices[i]-buy_candidate)>(picks[1]-picks[0])
					picks[0]=buy_candidate
					picks[1]=prices[i]
				end
			end
		end
		if picks[1]<0
			return "Don't Buy!"
		else
			choices=[prices.index(picks[0]),prices.rindex(picks[1])]
			return choices
		end
	else
		return "please input an array"
	end
end