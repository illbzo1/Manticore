class CreateWills < ActiveRecord::Migration
  def self.up
    create_table :wills do |t|
      t.integer :base
      t.integer :ability
      t.integer :magic
      t.integer :misc
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :wills
  end
end
