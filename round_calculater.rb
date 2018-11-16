require './Player_class.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.0.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

points_now = 0
points_goal = 3000 + 6000 + 9000 + 12000 + 150000 + 400 * 11 + 3000 + 7000 + 14000
points_get_one_round = 950 * 1.05

player = Player.new(points_now: points_now, points_goal: points_goal, points_get_one_round: points_get_one_round)

printf("必要周回数: %d\n", player.need_round_num)
