# coding: UTF-8

require 'rake/testtask'

task :default => [:test]

# 単体試験の全実行
Rake::TestTask.new do |test|
	# $LOAD_PATH に追加するパス (デフォルトで 'lib' は入っている)
	test.libs << 'test'
	
	# テスト対象ファイルの指定
	test.test_files = Dir[ 'test/**/*_Test.rb' ]

	# テスト結果の詳細表示
	#test.verbose = true
end
