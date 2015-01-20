require_relative 'sl4Real.rb'

describe Numermaster do 
	before do
		@numermaster = Numermaster.new
	end

	describe "#posneg" do
		it "should return positive numbers" do
			expect(@numermaster.posneg([-1, 0, 1, 2, 3, 4])).to eq([1, 2, 3, 4])
		end
		it "should return negative numbers" do
			expect(@numermaster.posneg([1, 0, -1, -2, -3, -4])).to eq([-1, -2, -3, -4])
		end
		it "should return []" do
			expect(@numermaster.posneg([4, 3, 2, -2, -3, -4])).to eq([])
		end
	end

	describe "#mean" do
		it "should return the mean of the array if there are numbers in the array" do
			expect(@numermaster.mean([0, 1, 1, 1, 3, 4])).to eq(1)
		end
		it "should return nil if there are no numbers in the array" do
			expect(@numermaster.mean([])).to eq(nil)
		end
	end

	describe "#median" do
		it "should return the median of the array if there are numbers in the array" do
			expect(@numermaster.median([0, 1, 1, 1, 3, 4])).to eq(1)
		end
		it "should return nil if there are no numbers in the array" do
			expect(@numermaster.median([])).to eq(nil)
		end
	end

	describe "#mode" do
		it "should return the mode of the array if there are numbers in the array" do
			expect(@numermaster.mode([0, 1, 1, 1, 3, 4])).to eq(1)
		end
		it "should return nil if there are no numbers in the array" do
			expect(@numermaster.mode([])).to eq(nil)
		end
	end

	describe "#size" do
		it "should return the size of the array if there are numbers in the array" do
			expect(@numermaster.size([0, 1, 1, 1, 3, 4])).to eq(6)
		end
		it "should return nil if there are no numbers in the array" do
			expect(@numermaster.size([])).to eq(nil)
		end
	end	

	describe "#fibonacci" do
		it "should return zero if zero" do
			expect(@numermaster.fibonacci(0)).to eq(nil)
		end
		it "should return one if one" do
			expect(@numermaster.fibonacci(1)).to eq(0)
		end
		it "should return" do
			expect(@numermaster.fibonacci(2)).to eq(1)
		end
		it "should return" do
			expect(@numermaster.fibonacci(3)).to eq(1)
		end
		it "should return" do
			expect(@numermaster.fibonacci(4)).to eq(2)
		end
		it "should return" do
			expect(@numermaster.fibonacci(5)).to eq(3)
		end
		it "should return" do
			expect(@numermaster.fibonacci(6)).to eq(5)
		end
		it "should return" do
			expect(@numermaster.fibonacci(7)).to eq(8)
		end
	end	
end 