class Hp < ActiveRecord::Base
  belongs_to :character
  
  validates_presence_of :total
end
