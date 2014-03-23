require "pp"
require_relative "../lib/station_parser"

describe StationParser do
	it "returns a list of stations information" do
		station_parser = StationParser.new "spec/test_data/stations_test.csv"
		station_data = station_parser.parse
		expect(station_data).to_not be_empty
	end	

	it "returns all data about a specific station" do
		station_parser = StationParser.new "spec/test_data/stations_test.csv"
		station_data = station_parser.parse
		expect(station_data["Ditmars Blvd"]).to_not be_empty
	end
end