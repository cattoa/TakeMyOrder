json.array!(@menus) do |menu|
  json.extract! menu, :id, :name, :date_from, :date_to, :description
  json.url menu_url(menu, format: :json)
end
