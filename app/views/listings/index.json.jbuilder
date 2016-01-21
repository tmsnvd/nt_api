json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :rent_property_id, :user_id
  json.url listing_url(listing, format: :json)
end
