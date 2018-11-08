# minitestを読み込み
require 'minitest/autorun'

END{
	puts("\n終了します。。。")
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



# 必要周回数を得る
def get_need_round_num(points_want, points_get_one_round, points_now)
	# (欲しいポイント数 - 現在のポイント数)/(1周で得るポイント数)の切り上げ
	return ((points_want - points_now)/points_get_one_round).ceil
end

# --------------------------------
#   main
# --------------------------------
puts("--------------------------------")
puts("周回数計算機 ver. 1.0.0")
puts("--------------------------------")

# 必要情報を入力
# スタミナ回復速度(分)
points_now = 0	# 現在のポイント数
# 現在のスタミナ
points_want = 100000	# 欲しいポイント数
# 消費スタミナ/1周
points_get_one_round = 950	# 得るポイント数/1周
# ポイント上昇率%

# 必要周回数
need_round_num = get_need_round_num(points_want, points_get_one_round, points_now)

# 出力する
printf("必要周回数: %d\n", need_round_num)

