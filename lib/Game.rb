require 'hashie'

class Game
	attr_reader :heal_interval, :cost_one_round
	
	def initialize(sutamina_array)
		@heal_interval = sutamina_array[:heal_interval]	# 回復速度(分)
		@cost_one_round = sutamina_array[:cost_one_round]	# 消費スタミナ/1周
	end

	# 1日で回復するスタミナ
	def stamina_day_recover
		# TODO: マジックナンバーを定数にする
		(24 * 60) / heal_interval
	end

	# 1日の周回可能回数
	def round_num_day
		stamina_day_recover / cost_one_round
	end
	
end
