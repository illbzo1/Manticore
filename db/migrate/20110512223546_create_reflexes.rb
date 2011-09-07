class CreateReflexes < ActiveRecord::Migration
  def self.up
    create_table :reflexes do |t|
      t.integer :reflex_base
      t.integer :ability
      t.integer :magic
      t.integer :misc
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :reflexes
  end
end
