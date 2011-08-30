class CreateAcs < ActiveRecord::Migration
  def self.up
    create_table :acs do |t|
      t.integer  :total
      t.integer  :base_ac
      t.integer  :armor
      t.integer  :shield
      t.integer  :dex
      t.integer  :size
      t.integer  :natural
      t.integer  :deflection
      t.integer  :misc
      t.integer  :reduction
      t.integer  :sr
      t.references  :character
      
      t.timestamps
    end
  end

  def self.down
    drop_table :acs
  end
end
