require 'minitest/autorun'	# minitestを読み込み
require_relative './Player_class.rb'

class Player_Test < Minitest::Test
	attr_reader :player

	def setup
		@player = Player.new(points_now: 10, points_goal: 100000, points_get_one_round: 950)
	end

	def test_need_round_num
		assert_equal 105, player.need_round_num
	end

	def test_points_need
		assert_equal 99990, player.points_need
	end
end
