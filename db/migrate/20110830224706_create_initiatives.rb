class CreateInitiatives < ActiveRecord::Migration
  def self.up
    create_table :initiatives do |t|
      t.integer  :total
      t.integer  :dex
      t.integer  :misc
      t.integer  :speed
      t.references  :character
      
      t.timestamps
    end
  end

  def self.down
    drop_table :initiatives
  end
end
