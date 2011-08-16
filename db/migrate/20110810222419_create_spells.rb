class CreateSpells < ActiveRecord::Migration
  def self.up
    create_table :spells do |t|
      t.string :school
      t.string :level
      t.string :components
      t.string :casting_time
      t.string :range
      t.string :target
      t.string :duration
      t.string :saving_throw
      t.string :spell_resistance
      t.text :description
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :spells
  end
end
