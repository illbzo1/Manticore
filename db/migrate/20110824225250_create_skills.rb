class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.string :name
      t.string :ability
      t.integer :ability_mod
      t.integer :misc_mod
      t.integer :ranks
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
