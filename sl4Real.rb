class Numermaster
	def posneg(array_of_nums)
		a = array_of_nums.select { |numbers|  numbers > 0  }
		b = array_of_nums.select { |numbers|  numbers < 0  }
		if a.length > b.length
			return a
		elsif a.length < b.length
			return b
		elsif a.length == b.length
			return []
		end
	end
	
	def mean(array_of_nums)
		return nil if array_of_nums.empty?
		array_of_nums.inject{|sum,x| sum + x }/array_of_nums.size	
	end

	def median(array_of_nums)
		return nil if array_of_nums.empty?
		mid = array_of_nums.length / 2
		sorted = array_of_nums.sort
		array_of_nums.length.odd? ? sorted[mid] : 0.5 * (sorted[mid] + sorted[mid - 1])
	end
	
	def mode(array_of_nums)
		return nil if array_of_nums.empty?
		array_of_nums.uniq.max_by{ |i| array_of_nums.count( i ) }
	end

	def size(array_of_nums)
		return nil if array_of_nums.empty?
		array_of_nums.length
	end

	def fibonacci(n)
		return nil if n < 1
		return 0 if n == 1
		return 1 if n == 2
		fibonacci(n - 1) + fibonacci(n - 2)
	end
end