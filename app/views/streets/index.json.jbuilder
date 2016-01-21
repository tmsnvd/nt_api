json.array!(@streets) do |street|
  json.extract! street, :id, :title
  json.url street_url(street, format: :json)
end
