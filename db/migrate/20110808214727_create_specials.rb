class CreateSpecials < ActiveRecord::Migration
  def self.up
    create_table :specials do |t|
      t.text :special_desc
      t.text :special_benefit
      t.text :special_notes
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :specials
  end
end
