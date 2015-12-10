class Menu < ActiveRecord::Base
  has_many :menu_items, dependent: :destroy
  accepts_nested_attributes_for :menu_items, reject_if: :all_blank, allow_destroy: true
end
