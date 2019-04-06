require_relative './Player.rb'

module Player_factory
	CLASS_NAME = Player

	# クラスメソッドにする(includeでの呼び出し不可)
	def self.build(points, game)
		ensure_not_zero(points[:get_one_round])

		# 全ての引数が正の整数であることを確認
		points.each do |key, value|
			ensure_integer(value)
			ensure_positive_int(value)

			points[key] = value.to_i	# 文字列を整数に変換
		end

		obj = CLASS_NAME.new(points, game)
	end

	# 整数か(ensure: 確保)
	def ensure_integer(num)
		if !num.integer?
			raise ArgumentError, "#{num}は整数ではありません"
		end
	end
	module_function :ensure_integer	# インスタンスメソッドにする

	# 正の整数か
	def ensure_positive_int(num)
		if num < 0
			raise ArgumentError, "#{num}は正の整数ではありません"
		end
	end
	module_function :ensure_positive_int

	# 0ならエラー
	def ensure_not_zero(num)
		if 0 == num
			raise ArgumentError, "#{num}以外の値を入力してください"
		end
	end
	module_function :ensure_not_zero
end

