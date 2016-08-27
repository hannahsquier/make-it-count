require 'json'

class StateData
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

end