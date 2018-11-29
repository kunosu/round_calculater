require_relative './Player.rb'

module Player_factory
	CLASS_NAME = Player

	# クラスメソッドにする(includeでの呼び出し不可)
	def self.build(points)
		# 全ての引数が正の整数であることを確認
		points.each_value do |value|
			ensure_integer(value)
			ensure_positive_int(value)
		end

		ensure_not_zero(points[:get_one_round])

		points.each do |key, value|
			points[key] = value.to_i
		end

		obj = CLASS_NAME.new(points[:now], points[:goal], points[:get_one_round])
	end

	# 整数か(ensure: 確保)
	def ensure_integer(str_num)
		if str_num !~ /^-{0,1}[0-9]+$/
			raise ArgumentError, "#{str_num} は整数ではありません"
		end
	end
	module_function :ensure_integer	# インスタンスメソッドにする

	# 正の整数か
	def ensure_positive_int(str_num)
		if str_num.to_i <= 0
			raise ArgumentError, "#{str_num} は正の整数ではありません"
		end
	end
	module_function :ensure_positive_int

	# 0ならエラー
	def ensure_not_zero(str_num)
		if 0 == str_num.to_i
			raise ArgumentError, "0以外の値を入力してください"
		end
	end
	module_function :ensure_not_zero
end

