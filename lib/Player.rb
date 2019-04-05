class Player
	attr_reader :points_now, :points_goal, :points_get_one_round, :game

	def initialize(points_now, points_goal, points_get_one_round, game)
		# 現在のポイント数
		@points_now = points_now.to_f

		# 目標のポイント数
		@points_goal = points_goal.to_f

		# 得るポイント数/1周(0はエラー)
		@points_get_one_round = points_get_one_round.to_f

		# Gameクラスのインスタンス
		@game = game
	end

	# 必要周回数
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

	# 必要なポイントを得るのにかかる日数
	def days_need
		# (必要周回数) / (1日の周回可能回数)
		days_need = need_round_num.to_f / game.round_num_day

		return days_need.ceil	# 切り上げ
	end
end

