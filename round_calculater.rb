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

# キーボードから整数のみを得る
def input_num(print_str = "整数値を入力: ")
	in_num = -1
	
	while true
		print(print_str)
		
		in_num = gets

		#printf("in_num = %s\n", in_num)

		# in_numが整数以外の場合ループ
		if in_num =~ /^-{0,1}[0-9]+$/
			break
		end
	end 

	# 文字列を整数値に変換して返す
	return in_num.to_i
end

class Player
	attr_reader :points_now				# 現在のポイント数
	attr_reader :points_want			# 欲しいポイント数
	attr_reader :points_get_one_round	# 得るポイント数/1周

	def initialize(points_now, points_want, points_get_one_round)
		@points_now = points_now
		@points_want = points_want
		@points_get_one_round = points_get_one_round
	end

	# 必要周回数を得る
	def get_need_round_num()
		# (欲しいポイント数 - 現在のポイント数)/(1周で得るポイント数)
		need_round_num = (points_want - points_now)/points_get_one_round

		return need_round_num.ceil	# 切り上げ
	end

end

class Round_num_Test < Minitest::Test
	round_num = Player.new(0, 100000, 950)

	# 必要周回数
	need_round_num = round_num.get_need_round_num()

	# 出力する
	printf("必要周回数: %d\n", need_round_num)

end


