class Reflex < ActiveRecord::Base
  belongs_to :character
  validates_presence_of :reflex_base, :ability, :magic, :misc
  validates_numericality_of :reflex_base, :ability, :magic, :misc
  
  def total
    reflex_base + ability + magic + misc
  end
end
