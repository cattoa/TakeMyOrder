class MenuItem < ActiveRecord::Base
  belongs_to :menu
  has_many :menu_item_option, dependent: :destroy
end
