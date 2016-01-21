json.array!(@rent_properties) do |rent_property|
  json.extract! rent_property, :id, :building_year, :city_id, :street_id, :house_number, :apartment_number, :user_id, :status_id
  json.url rent_property_url(rent_property, format: :json)
end
