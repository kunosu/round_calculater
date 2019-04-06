# coding: UTF-8

require 'minitest/autorun'
require_relative '../lib/Player.rb'

class Dummy_Game
	# 1日の周回可能回数
	def self.round_num_day
		14
	end
end

class Player_Test < Minitest::Test
	attr_reader :player

	POINTS_NOW = 10	# 現在のポイント数
	POINTS_GOAL = 100000	# 目標のポイント数
	POINTS_GET_ONE_ROUND = 950	# 得るポイント数/1周

	def setup
		# input用のHash
		points = {now: POINTS_NOW, goal: POINTS_GOAL, get_one_round: POINTS_GET_ONE_ROUND}
		points = Hashie::Mash.new(points)

		@player = Player.new(points, Dummy_Game)
	end

	# 必要周回数
	def test_need_round_num
		assert_equal 106, player.need_round_num
	end

	# 必要ポイント数
	def test_points_need
		assert_equal 99990, player.points_need
	end

	# 必要なポイントを得るのにかかる日数
	def test_days_need
		assert_equal 8, player.days_need
	end
end
