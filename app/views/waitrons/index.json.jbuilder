json.array!(@waitrons) do |waitron|
  json.extract! waitron, :id, :logon, :name, :surname, :mobile
  json.url waitron_url(waitron, format: :json)
end
