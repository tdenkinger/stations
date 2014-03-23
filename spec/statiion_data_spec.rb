require_relative "../lib/station_parser"

describe StationParser do
	it "returns a list of stations information" do
		parser = StationParser.new("/User/tdenking/Desktop/StationEntrances.csv")
		station_data = parser.parse
		expect(station_data).to_not be_empty
	end	
end