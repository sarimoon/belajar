json.array!(@geostates) do |geostate|
  json.extract! geostate, :id, :short, :name, :sort_order
  json.url geostate_url(geostate, format: :json)
end
