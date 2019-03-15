# coding: UTF-8

require_relative './lib/Config.rb'
require_relative './lib/Player.rb'
require_relative './lib/Player_factory.rb'
require_relative './lib/Game.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.2.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

player = Player_factory.build($YAML.points)
game = Game.new($YAML.stamina[:heal_interval])

puts "必要周回数: #{player.need_round_num}"
puts "一日で回復するスタミナ: #{game.stamina_day_recover}"
