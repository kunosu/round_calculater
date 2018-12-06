require 'hashie'

module Config
	FILE_NAME = "../config.yml"

	# ymlファイルをHashieで読み込み
	def self.read
		return Hashie::Mash.load(FILE_NAME)
	end
end

$YAML = Config.read
