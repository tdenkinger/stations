require "csv"

class StationParser
	def initialize stations_file
		@data_file = stations_file
	end

	def parse
		stations = {}
		CSV.foreach(@data_file) do | station_info |
			stations[station_info[2]] ||= []
			stations[station_info[2]] << station_info
		end
		stations
	end
end