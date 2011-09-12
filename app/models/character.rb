class Character < ActiveRecord::Base
  has_one :statistic, :dependent => :destroy
  has_one :fortitude, :dependent => :destroy
  has_one :reflex, :dependent => :destroy
  has_one :will, :dependent => :destroy
  has_one :ac, :dependent => :destroy
  has_one :hp, :dependent => :destroy
  has_one :initiative, :dependent => :destroy
  has_one :background, :dependent => :destroy
  has_many :items, :dependent => :destroy
  has_many :specials, :dependent => :destroy
  has_many :spells, :dependent => :destroy
  has_many :skills, :dependent => :destroy
  
  
  validates_presence_of :name, :profession, :level, :sex, :alignment, :campaign
  validates_numericality_of :level
  
  accepts_nested_attributes_for :background
  
  def menu_pages
    items.exists? and skills.exists? and specials.exists? and spells.exists? and background
  end
  
  def character_pages
    statistic or hp or ac or initiative or fortitude or reflex or will
  end
end
