json.array!(@geocities) do |geocity|
  json.extract! geocity, :id, :short, :name, :sort_order
  json.url geocity_url(geocity, format: :json)
end
