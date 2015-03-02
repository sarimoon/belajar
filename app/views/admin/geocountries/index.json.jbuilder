json.array!(@geocountries) do |geocountry|
  json.extract! geocountry, :id, :short, :name, :sort_order
  json.url geocountry_url(geocountry, format: :json)
end
