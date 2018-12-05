# coding: UTF-8

require 'yaml'

module Read_config
	FILE_NAME = "../config.yml"

	def self.read
		str = YAML.load_file(FILE_NAME)

		puts str
	end
end

Read_config.read