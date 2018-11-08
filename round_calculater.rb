=begin

=end

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

# 一日で回復するスタミナ数を得る
def get_stamina_recover_day(recovery_need_time)
	return (24 * 60)/recovery_need_time
end

# 同じステージを1日で何周できるか得る
def get_round_num(need_stamina, now_stamina = 0, recovery_need_time)
	round_num = (get_stamina_recover_day(recovery_need_time) + now_stamina)/need_stamina
	
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
def get_need_round_num(want_point, now_point, one_round_point)
	need_round_num = 0
	
	need_round_num = (want_point - now_point)/one_round_point
	
	return need_round_num.ceil	# 切り上げ
end


# 何日かかるか求める
def get_need_day(need_round_num, recovery_need_time)
	
	need_day = get_round_num(20, 0, recovery_need_time)
	
	
	return need_day
end

# --------------------------------
#   main
# --------------------------------
puts("--------------------------------")
puts("周回数計算機 ver. 1.0.0")
puts("--------------------------------")

# 引数入力
now_point = 0	# 現在のポイント数
want_point = 100000	# 欲しい合計ポイント数
one_round_point = 20	# 消費スタミナ/1周
recovery_need_time = 5	# スタミナ回復速度(分/1スタミナ)
get_point = 950	# 得るポイント数/1出撃
up_point = 0	# ポイント上昇率(%)
now_stamina = 0	# 現在のスタミナ数

# 計算

# 必要周回数
need_round_num = get_need_round_num(want_point, now_point, one_round_point)
need_day = get_need_day(need_round_num, recovery_need_time)

# 表示
printf("必要周回数: %d\n", need_round_num)
printf("必要日数: %d\n", need_day)