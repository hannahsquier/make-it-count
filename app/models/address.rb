class Address
  attr_reader :address
  def initialize(address)
    @address = address
  end

  def get_state
    @address.split(",")[-2].strip.downcase
  end

end
