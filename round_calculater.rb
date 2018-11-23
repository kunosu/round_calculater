require './class/Player_class.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.0.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

def input_num(print_str)
	printf(print_str)

	num = gets

	# 得た文字列を数値にして返す
	return num.to_i
end

points_now = input_num("現在のポイント数: ")

points_goal = input_num("目標のポイント数: ")

points_get_one_round = input_num("得るポイント数/1周: ")

player = Player.new(points_now: points_now, points_goal: points_goal, points_get_one_round: points_get_one_round)

printf("必要周回数: %d\n", player.need_round_num)
