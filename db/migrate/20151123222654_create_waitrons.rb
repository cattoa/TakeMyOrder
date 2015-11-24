class CreateWaitrons < ActiveRecord::Migration
  def change
    create_table :waitrons do |t|
      t.string :logon
      t.string :name
      t.string :surname
      t.string :mobile

      t.timestamps null: false
    end
  end
end
