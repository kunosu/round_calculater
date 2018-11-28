require 'minitest/autorun'
require_relative '../lib/Player_factory.rb'

class Player_factory_test < Minitest::Test
	include Player_factory
	
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

	def test_ensure_positive_int
		assert_raises(ArgumentError) do
			ensure_positive_int("-1")
		end
	end

	def test_ensure_not_zero
		assert_raises(ArgumentError) do
			ensure_not_zero("0")
		end
	end
end