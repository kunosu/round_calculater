require_relative './class/Player_class.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.0.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

def input_str(print_str)
	printf(print_str)

	num = gets

	return num
end

points_now = input_str("現在のポイント数: ")
points_goal = input_str("目標のポイント数: ")
points_get_one_round = input_str("得るポイント数/1周: ")

player = Player.new(points_now: points_now, points_goal: points_goal, points_get_one_round: points_get_one_round)

printf("必要周回数: %d\n", player.need_round_num)
