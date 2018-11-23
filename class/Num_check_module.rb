module Num_check
	# 整数なら文字列を整数に変換して返す
	def integer_check(num)
		if num =~ /^[0-9]+$/
			return num.to_i
		else
			raise ArgumentError, "#{num} は整数ではありません"
		end
	end

	# 正の整数かチェック
	def positive_int_check(num)
		num = integer_check(num)

		if 0 <= num
			return num
		else
			raise ArgumentError, "#{num} は正の整数ではありません"
		end
	end

	# 0ならエラー
	def zero_check(num)
		if 0 == num
			raise ArgumentError, "0以外の値を入力してください"
		else
			return num
		end
	end
end

