class Fortitude < ActiveRecord::Base
  belongs_to :character
  
  def total
    base + ability + magic + misc
  end
end
