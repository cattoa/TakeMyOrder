class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.date :date_from
      t.date :date_to
      t.text :description

      t.timestamps null: false
    end
  end
end
