class AddNameToSpells < ActiveRecord::Migration
  def self.up
    add_column :spells, :name, :string
  end

  def self.down
    remove_column :spells, :name
  end
end
