require 'hashie'

module Config
	FILE_NAME = "./config.yml"

	# ymlファイルをHashieで読み込み
	def self.read
		return Hashie::Mash.load(search_file)
	end

	# テストと本番でカレントディレクトリが1階層分ことなるため
	def self.search_file
		if FileTest.exist?(FILE_NAME)
			file_pass = FILE_NAME
		else
			# カレントディレクトリにymlがない場合、一つ上にある
			file_pass = "." + FILE_NAME
		end

		return file_pass
	end
end

$YAML = Config.read
