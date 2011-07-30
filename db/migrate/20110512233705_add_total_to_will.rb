class AddTotalToWill < ActiveRecord::Migration
  def self.up
    add_column :wills, :total, :integer
  end

  def self.down
    remove_column :wills, :total
  end
end
