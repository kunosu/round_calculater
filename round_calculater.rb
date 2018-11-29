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

def input_str(print_str)
	printf(print_str)

	str = gets
	return str
end

# 初期化用
input_points = {:now => "現在のポイント数", 
				:goal => "目標のポイント数", 
				:get_one_round => "得るポイント数/1周"}

points = Hash.new()

input_points.each do |key, value|
	points[key] = input_str(value + ": ")
end

player = Player_factory.build(points)

puts "必要周回数: #{player.need_round_num}"
