require 'minitest/autorun'

class Ensure_str_num_test < Minitest::Test
	include Ensure_str_num
	
	def test_ensure_integer
		assert_raises(ArgumentError) do
			ensure_integer("a")
		end

		assert_raises(ArgumentError) do
			ensure_integer("0.1")
		end

		assert_raises(ArgumentError) do
			ensure_integer("1.0")
		end
	end

	def test_ensure_positive_int(num)
		assert_raises(ArgumentError) do
			ensure_positive_int("-1")
		end
	end

	def test_ensure_zero(num)
		assert_raises(ArgumentError) do
			ensure_zero("0")
		end
	end
end