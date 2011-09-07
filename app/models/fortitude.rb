class Fortitude < ActiveRecord::Base
  belongs_to :character
  
  validates_presence_of :fortitude_base, :ability, :magic, :misc
  validates_numericality_of :fortitude_base, :ability, :magic, :misc
  
  def total
    fortitude_base + ability + magic + misc
  end
end
