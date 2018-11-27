module Ensure_str_num
	# 整数か(ensure: 確保)
	def ensure_integer(num)
		if num !~ /^-{0,1}[0-9]+$/
			raise ArgumentError, "#{num} は整数ではありません"
		end
	end

	# 正の整数か
	def ensure_positive_int(num)
		ensure_integer(num)

		if 0 <= num.to_i
			raise ArgumentError, "#{num} は正の整数ではありません"
		end
	end

	# 0ならエラー
	def ensure_not_zero(num)
		ensure_integer(num)
		if 0 == num.to_i
			raise ArgumentError, "0以外の値を入力してください"
		end
	end
end

