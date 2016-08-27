require 'json'

class StateData
  def initialize(state, json_path)
   @file = File.read("#{Rails.root}/public/sample.json")
   @state = state
  end

  def get_data
    JSON.parse(@file)[@state]
  end

  def get_voter_power_index
    get_data["voter_power_index"]
  end

  def get_tipping_point_chance
    get_data["tipping_point_chance"]
  end

  def get_president_trends
    get_data["president_trends"]
  end


  def get_senator_trends
    get_data["senator_trends"]
  end

  def senator_info

  end

end