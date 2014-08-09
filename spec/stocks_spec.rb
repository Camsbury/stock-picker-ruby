require "stocks"

describe "pick stocks" do
	it "easy max" do
		expect(stock_picker([95,6,1,10,4,7,95,8])).to eq([2,6])
	end
	it "max at top" do
		expect(stock_picker([70,60,50,40,30,10,20])).to eq([5,6])
	end
	it "other1" do
		expect(stock_picker([5,90,2])).to eq([0,1])
	end
	it "don't buy" do
		expect(stock_picker([5,4,3,2,1])).to eq("Don't Buy!")
	end
	it "tricky" do
		expect(stock_picker([90,70,50,10,30,4,5,3,2,1])).to eq([3,4])
	end
	it "really tricky" do
		expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
	end
end
