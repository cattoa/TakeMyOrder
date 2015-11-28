json.array!(@menu_item_options) do |menu_item_option|
  json.extract! menu_item_option, :id, :code, :name, :description
  json.url menu_item_option_url(menu_item_option, format: :json)
end
