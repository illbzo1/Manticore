class CreateBackgrounds < ActiveRecord::Migration
  def self.up
    create_table :backgrounds do |t|
      t.text :physical
      t.text :personality
      t.text :history
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :backgrounds
  end
end
