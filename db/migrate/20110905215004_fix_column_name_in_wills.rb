class FixColumnNameInWills < ActiveRecord::Migration
    def self.up
      rename_column :wills, :base, :will_base
    end

    def self.down
      rename_column :wills, :will_base, :base    
    end
  end