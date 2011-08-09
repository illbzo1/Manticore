class RenameType < ActiveRecord::Migration
  def self.up
    rename_column :items, :type, :item_type
  end

  def self.down
    rename_column :items, :item_type, :type
    
  end
end
