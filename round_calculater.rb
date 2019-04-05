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
game = Game.new($YAML.stamina[:heal_interval], $YAML.stamina[:cost_one_round])

puts "必要周回数: #{player.need_round_num}"
puts "1日で回復するスタミナ: #{game.stamina_day_recover}"
puts "1日の周回可能回数: #{game.round_num_day}"
puts "必要なポイントを得るのにかかる日数: #{player.days_need}"
