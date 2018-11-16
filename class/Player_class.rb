class Player
	attr_reader :points_now				# 現在のポイント数(整数値)
	attr_reader :points_goal			# 目標のポイント数(整数値)
	attr_reader :points_get_one_round	# 得るポイント数/1周(0はエラー)

	def initialize(points_now: 0, points_goal: , points_get_one_round: )
		@points_now = points_now
		@points_goal = points_goal
		@points_get_one_round = points_get_one_round
	end

	# 必要周回数を得る
	def need_round_num
		# (必要ポイント数)/(1周で得るポイント数)
		need_round_num = points_need/points_get_one_round

		return need_round_num.ceil	# 切り上げ
	end

	# 必要ポイント数
	def points_need
		# 目標のポイント数 - 現在のポイント数
		return points_goal - points_now
	end
end

