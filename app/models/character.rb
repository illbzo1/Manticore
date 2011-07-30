class Character < ActiveRecord::Base
  has_one :statistic, :dependent => :destroy
  has_one :fortitude, :dependent => :destroy
  has_one :reflex, :dependent => :destroy
  has_one :will, :dependent => :destroy
  has_one :ac, :dependent => :destroy
  has_one :hp, :dependent => :destroy
  has_one :initiative, :dependent => :destroy
  has_many :items, :dependent => :destroy
    
  def to_s
    "name (ac: #{armor.total})"
  end
end
