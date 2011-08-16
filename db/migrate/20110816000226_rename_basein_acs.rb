class RenameBaseinAcs < ActiveRecord::Migration
  def self.up
    rename_column :acs, :base, :base_ac
  end

  def self.down
    rename_column :acs, :base_ac, :base
    
  end
end
