namespace :save do
  desc 'Saves breweries to 2nd db'
  task second_brewery: :environment do
    puts 'saving...'
    1000.times do |i|
      brewerydb_api = BrewerydbApi.new
      locations_response = brewerydb_api.brewery_locations(1+i)
      locations_response[:data].each do |location_hash|
        Brewery.create({
          name: location_hash[:brewery][:name],
          address: location_hash[:streetAddress],
          city: location_hash[:locality],
          state: location_hash[:region],
          zipcode: location_hash[:postalCode],
          country: location_hash[:country][:isoCode],
          location_type: location_hash[:locationTypeDisplay],
          website: location_hash[:website],
        })
        puts 1 + i
        puts 'saved'
      end
    end
  end

  desc 'Updates States abbreviations'
  task update_abbr: :environment do
    puts 'updating!'
    us_breweries = Brewery.where(country: 'US')
    us_breweries.where(state: 'Alabama').update_all(state_abbr: 'AL')
    us_breweries.where(state: 'Alaska').update_all(state_abbr: 'AK')
    us_breweries.where(state: 'Arizona').update_all(state_abbr: 'AZ')
    us_breweries.where(state: 'Arkansas').update_all(state_abbr: 'AR')
    us_breweries.where(state: 'California').update_all(state_abbr: 'CA')
    us_breweries.where(state: 'Colorado').update_all(state_abbr: 'CO')
    us_breweries.where(state: 'Connecticut').update_all(state_abbr: 'CT')
    us_breweries.where(state: 'Delaware').update_all(state_abbr: 'DE')
    us_breweries.where(state: 'Florida').update_all(state_abbr: 'FL')
    us_breweries.where(state: 'Georgia').update_all(state_abbr: 'GA')
    us_breweries.where(state: 'Hawaii').update_all(state_abbr: 'HI')
    us_breweries.where(state: 'Idaho').update_all(state_abbr: 'ID')
    us_breweries.where(state: 'Illinois').update_all(state_abbr: 'IL')
    us_breweries.where(state: 'Indiana').update_all(state_abbr: 'IN')
    us_breweries.where(state: 'Iowa').update_all(state_abbr: 'IA')
    us_breweries.where(state: 'Kansas').update_all(state_abbr: 'KS')
    us_breweries.where(state: 'Kentucky').update_all(state_abbr: 'KY')
    us_breweries.where(state: 'Louisiana').update_all(state_abbr: 'LA')
    us_breweries.where(state: 'Maine').update_all(state_abbr: 'ME')
    us_breweries.where(state: 'Maryland').update_all(state_abbr: 'MD')
    us_breweries.where(state: 'Massachusetts').update_all(state_abbr: 'MA')
    us_breweries.where(state: 'Michigan').update_all(state_abbr: 'MI')
    us_breweries.where(state: 'Minnesota').update_all(state_abbr: 'MN')
    us_breweries.where(state: 'Mississippi').update_all(state_abbr: 'MS')
    us_breweries.where(state: 'Missouri').update_all(state_abbr: 'MO')
    us_breweries.where(state: 'Montana').update_all(state_abbr: 'MT')
    us_breweries.where(state: 'Nebraska').update_all(state_abbr: 'NE')
    us_breweries.where(state: 'Nevada').update_all(state_abbr: 'NV')
    us_breweries.where(state: 'New Hampshire').update_all(state_abbr: 'NH')
    us_breweries.where(state: 'New Jersey').update_all(state_abbr: 'NJ')
    us_breweries.where(state: 'New Mexico').update_all(state_abbr: 'NM')
    us_breweries.where(state: 'New York').update_all(state_abbr: 'NY')
    us_breweries.where(state: 'North Carolina').update_all(state_abbr: 'NC')
    us_breweries.where(state: 'North Dakota').update_all(state_abbr: 'ND')
    us_breweries.where(state: 'Ohio').update_all(state_abbr: 'OH')
    us_breweries.where(state: 'Oklahoma').update_all(state_abbr: 'OK')
    us_breweries.where(state: 'Oregon').update_all(state_abbr: 'OR')
    us_breweries.where(state: 'Pennsylvania').update_all(state_abbr: 'PA')
    us_breweries.where(state: 'Rhode Island').update_all(state_abbr: 'RI')
    us_breweries.where(state: 'South Carolina').update_all(state_abbr: 'SC')
    us_breweries.where(state: 'South Dakota').update_all(state_abbr: 'SD')
    us_breweries.where(state: 'Tennessee').update_all(state_abbr: 'TN')
    us_breweries.where(state: 'Texas').update_all(state_abbr: 'TX')
    us_breweries.where(state: 'Utah').update_all(state_abbr: 'UT')
    us_breweries.where(state: 'Vermont').update_all(state_abbr: 'VT')
    us_breweries.where(state: 'Virginia').update_all(state_abbr: 'VA')
    us_breweries.where(state: 'Washington').update_all(state_abbr: 'WA')
    us_breweries.where(state: 'West Virginia').update_all(state_abbr: 'WV')
    us_breweries.where(state: 'Wisconsin').update_all(state_abbr: 'WI')
    us_breweries.where(state: 'Wyoming').update_all(state_abbr: 'WY')
    puts 'updated!'
  end
end
