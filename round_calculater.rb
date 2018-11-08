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




# --------------------------------
#   main
# --------------------------------
puts("--------------------------------")
puts("周回数計算機 ver. 1.0.0")
puts("--------------------------------")

=begin
# 必要情報を入力
# スタミナ回復速度(分)
# 現在のポイント数
# 現在のスタミナ
# 欲しいポイント数
# 消費スタミナ/1周
# 得るポイント数/1周
# ポイント上昇率%

# 必要周回数を得る
need_round = get_...

# 出力する
printf("必要周回数: %d\n", need_round)

=end
