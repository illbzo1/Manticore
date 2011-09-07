class Will < ActiveRecord::Base
  belongs_to :character
  validates_presence_of :will_base, :ability, :magic, :misc
  validates_numericality_of :will_base, :ability, :magic, :misc
  
  def total
    will_base + ability + magic + misc
  end
end
