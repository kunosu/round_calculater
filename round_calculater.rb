# coding: UTF-8

require_relative './lib/Config.rb'
require_relative './lib/Player.rb'
require_relative './lib/Player_factory.rb'

BEGIN{
	puts("--------------------------------")
	puts("周回数計算機 ver. 1.1.0")
	puts("--------------------------------")	
}

END{
	puts("\n終了します。。。\n")
}

player = Player_factory.build($YAML.points)

puts "必要周回数: #{player.need_round_num}"
