class Game
	attr_reader :heal_interval
	
	def initialize(heal_interval)
		@heal_interval = heal_interval	# 回復速度(分)
	end

	# 一日で回復するスタミナ
	def stamina_day_recover
		# TODO: マジックナンバーを定数にする
		(24 * 60) / heal_interval
	end
end
