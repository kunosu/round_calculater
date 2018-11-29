# coding: UTF-8

require 'minitest/autorun'
require_relative '../lib/Player_factory.rb'

class Player_factory_test < Minitest::Test
	include Player_factory
	
	def test_ensure_integer
		# if文の実行結果がfalse
		assert(!ensure_integer("1"))

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
		# if文の実行結果がfalse
		assert(!ensure_positive_int("1"))

		assert_raises(ArgumentError) do
			ensure_positive_int("-1")
		end
	end

	def test_ensure_not_zero
		# if文の実行結果がfalse
		assert(!ensure_not_zero("1"))

		assert_raises(ArgumentError) do
			ensure_not_zero("0")
		end
	end
end