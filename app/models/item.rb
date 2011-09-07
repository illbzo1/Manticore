class Item < ActiveRecord::Base
  belongs_to :character
  validates_presence_of :name, :item_type, :location, :description
  
end
