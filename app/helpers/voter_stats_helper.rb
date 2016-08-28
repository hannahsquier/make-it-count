module VoterStatsHelper
  def channel_mapper(channel)
    channels = {

    "Twitter" => link_to("<i class='fa fa-3x fa-twitter text-white sr-icons'></i>".html_safe, "https://www.twitter.com/#{channel['id']}"),

    "YouTube" => link_to("<i class='fa fa-3x fa-youtube text-white sr-icons'></i>".html_safe, "https://www.youtube.com/#{channel['id']}"),

    "Facebook" => link_to("<i class='fa fa-3x fa-facebook text-white sr-icons'></i>".html_safe, "https://www.facebook.com/#{channel['id']}")
    }

    channels[channel["type"]]
  end

  def get_white_house_image(leaning)
    map  = {
      "Much more Democratic" => "white-house-dark-blue.png",
      "Somewhat more Democratic" => "white-house-light-blue.png",
      "Like the country as a whole" => "white-house-neutral.png",
      "Much more Republican" => "white-house-dark-red.png",
      "Somewhat more Republican" => "white-house-light-red.png",
    }
    map[leaning]

  end

    def get_senate_image(leaning)
    map  = {
      "Likely Democratic" => "senate-dark-blue.png",
      "Competitive" => "senate-neutral.png",
      "Likely Republican" => "senate-dark-red.png",
    }
    map[leaning]

  end
end
