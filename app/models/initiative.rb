class Initiative < ActiveRecord::Base
  belongs_to :character
  
  validates_presence_of :dex, :misc, :speed
  validates_numericality_of :dex, :misc, :speed
  
  def total
    dex + misc
  end
end
