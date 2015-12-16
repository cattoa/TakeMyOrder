class MenuItemOption < ActiveRecord::Base
  belongs_to :menu_item
  validates :menu_item_id, presence: true
end
