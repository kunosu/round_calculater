# minitestを読み込み
require 'minitest/autorun'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.0.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

class Player
	attr_reader :points_now				# 現在のポイント数
	attr_reader :points_goal			# 目標のポイント数
	attr_reader :points_get_one_round	# 得るポイント数/1周

	def initialize(points_now, points_goal, points_get_one_round)
		@points_now = points_now
		@points_goal = points_goal
		@points_get_one_round = points_get_one_round
	end

	# 必要周回数を得る
	def need_round_num
		# (欲しいポイント数 - 現在のポイント数)/(1周で得るポイント数)
		need_round_num = (points_goal - points_now)/points_get_one_round

		return need_round_num.ceil	# 切り上げ
	end

end

class Player_Test < Minitest::Test
	def setup
		@player = Player.new(0, 100000, 950)
	end

	def test_need_round_num
		assert_equal 105, @player.need_round_num
	end
end



printf("必要周回数: %d\n", Player.new(0, 100000, 950).need_round_num())
