json.array!(@tables) do |table|
  json.extract! table, :id, :number, :max_seats
  json.url table_url(table, format: :json)
end
