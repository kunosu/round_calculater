require './Player_class.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.0.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

player = Player.new(points_now: 10, points_goal: 100000, points_get_one_round: 950)

printf("必要周回数: %d\n", player.need_round_num)
