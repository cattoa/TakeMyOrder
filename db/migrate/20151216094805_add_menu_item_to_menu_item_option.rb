class AddMenuItemToMenuItemOption < ActiveRecord::Migration
  def change
    add_column :menu_item_options, :menu_item_id, :integer
  end
end
