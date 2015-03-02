json.array!(@geodistricts) do |geodistrict|
  json.extract! geodistrict, :id, :short, :name, :sort_order
  json.url geodistrict_url(geodistrict, format: :json)
end
