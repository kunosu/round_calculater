# coding: UTF-8

require_relative './lib/Config.rb'
require_relative './lib/Player.rb'
require_relative './lib/Player_factory.rb'
require_relative './lib/Game.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.3.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

game = Game.new($YAML.stamina)
player = Player_factory.build($YAML.points, game)

puts "回復速度: \t\t#{$YAML.stamina[:heal_interval]} スタミナ/分"
puts "現在のポイント数: \t#{$YAML.points[:now]} p"
puts "目標のポイント数: \t#{$YAML.points[:goal]} p"
puts "1周コスト: \t\t#{$YAML.stamina[:cost_one_round]} スタミナ/周"
puts "1周の報酬: \t\t#{$YAML.points[:get_one_round]} p/周"

puts "\n----------------------------------------------------"
puts "必要周回数: #{player.need_round_num}周"
puts "残り #{player.points_need.to_i} ポイントを得るのにかかる日数: #{player.days_need}日"
