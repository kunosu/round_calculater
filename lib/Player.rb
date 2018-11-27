require_relative "./Ensure_str_num.rb"

class Player
	include Ensure_str_num

	attr_reader :points_now, :points_goal, :points_get_one_round

	def initialize(points_now: 0, points_goal: , points_get_one_round: )
		@points_now = ensure_positive_int(points_now)						# 現在のポイント数
		@points_goal = ensure_positive_int(points_goal)						# 目標のポイント数
		@points_get_one_round = ensure_not_zero(ensure_positive_int(points_get_one_round))	# 得るポイント数/1周(0はエラー)
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

