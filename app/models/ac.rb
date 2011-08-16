class Ac < ActiveRecord::Base
  belongs_to :character
  validates_presence_of :base_ac, :armor, :shield, :dex, :size, :natural, :misc, :deflection
  validates_numericality_of :base_ac, :armor, :shield, :dex, :size, :natural, :misc, :deflection

  def total
    base_ac + armor + shield + dex + size + natural + misc + deflection
  end
  
  def touch
    base_ac + dex + size + misc + deflection
  end
  
  def flat
    base_ac + armor + shield + natural + size + misc + deflection
  end
  
end
