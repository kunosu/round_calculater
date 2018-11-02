=begin

=end

# 定数
RECOVERY_NEED_TIME = 5	# スタミナが1回復するのに必要な時間(分)
DAY_STAMINA = (24 * 60)/RECOVERY_NEED_TIME	# 一日で回復するスタミナ

END{
	puts("終了します。。。")
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

# 同じステージを1日で何周できるか得る
def get_round_num(need_stamina, now_stamina = 0)
	round_num = (DAY_STAMINA + now_stamina)/need_stamina
	
	return round_num
end

# 必要ポイント数を得る
def get_need_point()
	need_point = 0
	
	new_character_arr = [3000, 6000, 9000, 12000, 15000]
	
	new_character_arr.each do |list|
		need_point += list
	end
	
	return need_point
end

# ポイント数に応じた必要周回数を得る
def get_need_round_num(need_point, now_point, one_round_point)
	need_round_num = 0
	
	need_round_num = (need_point - now_point)/one_round_point
	
	return need_round_num.ceil	# 切り上げ
end


# 何日かかるか求める
def get_need_day(need_round_num)
	
	need_day = get_round_num(20, 0)
	
	
	return need_day
end

# --------------------------------
#   main
# --------------------------------
puts("--------------------------------")
puts("周回数計算機 ver. 1.0.0")
puts("--------------------------------")

# 引数入力
	# 現在のポイント数
	# 欲しいポイント数
	# 消費スタミナ/1出撃
	# スタミナが1回復するのに必要な時間(分)
	# 得るポイント数/1出撃
	# ポイント上昇率%

# 計算

# 表示
	# 必要周回数
	# 必要日数