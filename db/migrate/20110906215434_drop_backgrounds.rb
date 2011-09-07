class DropBackgrounds < ActiveRecord::Migration
  def self.up
    drop_table :backgrounds
  end

  def self.down
    create_table :backgrounds 
  end
end
