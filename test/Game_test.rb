# coding: UTF-8

require 'minitest/autorun'
require_relative '../lib/Game.rb'

class Game_test < Minitest::Test
	attr_reader :game

	HEAL_INTERVAL = 5	# 回復間隔(分)

	def setup
		@game = Game.new(HEAL_INTERVAL)
	end

	# 一日で回復するスタミナ
	def test_stamina_day_recover
		assert_equal 288, game.stamina_day_recover
	end
end
