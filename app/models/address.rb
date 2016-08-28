STATES =   { 'Alabama' => 'AL',
    'Alaska' => 'AK',
    'America Samoa' => 'AS',
    'Arizona' => 'AZ',
    'Arkansas' => 'AR',
    'California' => 'CA',
    'Colorado' => 'CO',
    'Connecticut' => 'CT',
    'Delaware' => 'DE',
    'District of Columbia' => 'DC',
    'Federated States of Micronesia' => 'FM',
    'Florida' => 'FL',
    'Georgia' => 'GA',
    'Guam' => 'GU',
    'Hawaii' => 'HI',
    'Idaho' => 'ID',
    'Illinois' => 'IL',
    'Indiana' => 'IN',
    'Iowa' => 'IA',
    'Kansas' => 'KS',
    'Kentucky' => 'KY',
    'Louisiana' => 'LA',
    'Maine' => 'ME',
    'Maryland' => 'MD',
    'Massachusetts' => 'MA',
    'Marshall Islands' => 'MH',
    'Michigan' => 'MI',
    'Minnesota' => 'MN',
    'Mississippi' => 'MS',
    'Missouri' => 'MO',
    'Montana' => 'MT',
    'Nebraska' => 'NE',
    'Nevada' => 'NV',
    'New Hampshire' => 'NH',
    'New Jersey' => 'NJ',
    'New Mexico' => 'NM',
    'New York' => 'NY',
    'North Carolina' => 'NC',
    'North Dakota' => 'ND',
    'Northern Mariana Islands' => 'MP',
    'Ohio' => 'OH',
    'Oklahoma' => 'OK',
    'Oregon' => 'OR',
    'Palau' => 'PW',
    'Pennsylvania' => 'PA',
    'Puerto Rico' => 'PR',
    'Rhode Island' => 'RI',
    'South Carolina' => 'SC',
    'South Dakota' => 'SD',
    'Tennessee' => 'TN',
    'Texas' => 'TX',
    'Utah' => 'UT',
    'Vermont' => 'VT',
    'Virgin Island' => 'VI',
    'Virginia' => 'VA',
    'Washington' => 'WA',
    'West Virginia' => 'WV',
    'Wisconsin' => 'WI',
    'Wyoming' => 'WY'
  }

class Address
  attr_reader :address
  def initialize(address)
    @address = address
  end

  def get_state
    address_parts = @address.split(",")
    if address_parts[-2].strip.length == 2
      return @address.split(",")[-2].strip.downcase
    else
      return STATES[address_parts[-2]].downcase

    end
  end

end
