# Lab 1
# Part I

def sum arr
  # YOUR CODE HERE
	if arr.empty?
		return 0
	else
		return arr.inject(:+)
	end
end

# Part II
def max_2_sum arr
  # YOUR CODE HERE
  (arr.sort.last(2))
  return
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2).any? { |a,b|a + b == n}
end