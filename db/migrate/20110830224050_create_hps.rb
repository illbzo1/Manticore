class CreateHps < ActiveRecord::Migration
  def self.up
    create_table :hps do |t|
      t.integer  :total
      t.integer  :current
      t.integer  :nonlethal
      t.references  :character
      
      t.timestamps
    end
  end

  def self.down
    drop_table :hps
  end
end
