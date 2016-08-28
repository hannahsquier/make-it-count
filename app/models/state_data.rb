require 'json'
require 'uri'

class StateData
  include HTTParty

  attr_reader :data
  def initialize(state)
    @file = File.read("#{Rails.root}/public/states.json")
    @state = state
    @data = JSON.parse(@file)[@state]
  end


  def get_voter_power_index
    data["voter_power_index"]
  end

  def get_tipping_point_chance
    data["tipping_point_chance"]
  end

  def get_president_trends
    data["president_trends"]
  end


  def get_senator_trends
    data["senator_trends"]
  end

  def get_senator_info
    data["senators"]
  end

  def get_rep_data(address)
    response = HTTParty.get("https://www.googleapis.com/civicinfo/v2/representatives?address=#{URI.escape(address)}&key=AIzaSyBnM5Qx4ranWSTxAdQfJ2dgiUjAhLGxlHk", verify: false)

    office = response["offices"].select { |office| office["name"].start_with?("United States House of Representatives") }

    return if office.empty?

    index = office.first["officialIndices"].first

    response["officials"][index]

  end

  def get_district
    #@response.
  end

end