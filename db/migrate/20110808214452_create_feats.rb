class CreateFeats < ActiveRecord::Migration
  def self.up
    create_table :feats do |t|
      t.text :feat_desc
      t.text :feat_benefit
      t.text :feat_notes
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :feats
  end
end
