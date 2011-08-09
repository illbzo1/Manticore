class AddNameToSpecial < ActiveRecord::Migration
  def self.up
    add_column :specials, :special_name, :string
  end

  def self.down
    remove_column :specials, :special_name
  end
end
