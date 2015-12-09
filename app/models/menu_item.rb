class MenuItem < ActiveRecord::Base
  belongs_to :menu
  has_many :menu_item_options, dependent: :destroy
  validates :menu_id, presence: true
end
