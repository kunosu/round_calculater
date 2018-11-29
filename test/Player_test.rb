# coding: UTF-8

require 'minitest/autorun'
require_relative '../lib/Player.rb'

class Player_Test < Minitest::Test
	attr_reader :player

	def setup
		@player = Player.new(10, 100000, 950)
	end

	def test_need_round_num
		assert_equal 105, player.need_round_num
	end

	def test_points_need
		assert_equal 99990, player.points_need
	end
end
