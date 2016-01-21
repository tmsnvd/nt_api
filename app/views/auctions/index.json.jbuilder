json.array!(@auctions) do |auction|
  json.extract! auction, :id, :start_price, :start_date, :buynow_price, :minimal_price, :listing_id, :user_id
  json.url auction_url(auction, format: :json)
end
