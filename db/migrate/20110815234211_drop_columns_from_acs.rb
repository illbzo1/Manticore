class DropColumnsFromAcs < ActiveRecord::Migration
  def self.up
    remove_column :acs, :ffac, :tac
    
  end

  def self.down
    add_column :acs, :ffac, :tac
  end
end
