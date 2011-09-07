class Statistic < ActiveRecord::Base
  belongs_to :character
  validates_presence_of :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma
end
