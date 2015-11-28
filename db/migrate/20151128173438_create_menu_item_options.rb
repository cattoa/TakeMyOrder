class CreateMenuItemOptions < ActiveRecord::Migration
  def change
    create_table :menu_item_options do |t|
      t.string :code
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
