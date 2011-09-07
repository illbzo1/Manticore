class Skill < ActiveRecord::Base
  belongs_to :character
  default_scope order("name")
  
  validates_presence_of :name, :ability, :ability_mod, :misc_mod, :ranks

  def total
     ability_mod + misc_mod + ranks
  end
  
end
