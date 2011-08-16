class Initiative < ActiveRecord::Base
  belongs_to :character
  
  def total
    dex + misc
  end
end
