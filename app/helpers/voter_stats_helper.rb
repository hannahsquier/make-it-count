module VoterStatsHelper
  def channel_mapper(channel)
    channels = {

    "Twitter" => link_to("<i class='fa fa-twitter fa-lg'>".html_safe, "https://www.twitter.com/#{channel['id']}"),

    "YouTube" => link_to("<i class='fa fa-youtube fa-lg'>".html_safe, "https://www.youtube.com/#{channel['id']}"),

    "Facebook" => link_to("<i class='fa fa-facebook fa-lg'>".html_safe, "https://www.facebook.com/#{channel['id']}")
    }

    channels[channel["type"]]
  end
end
