# coding: UTF-8

require 'minitest/autorun'
require_relative '../lib/Game.rb'

class Game_test < Minitest::Test
	attr_reader :game

	STAMINA_MINUTES_RECOVER = 5	# 1スタミナ回復するのにかかる時間(分)

	def setup
		@game = Game.new(STAMINA_MINUTES_RECOVER)
	end

	# 一日で回復するスタミナ
	def test_stamina_day_recover
		assert_equal 288, game.stamina_day_recover
	end
end