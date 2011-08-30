class Skill < ActiveRecord::Base
  belongs_to :character
  
  def total
     ability_mod + misc_mod + ranks
  end
    
end
