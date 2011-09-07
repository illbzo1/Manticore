class FixColumnNameInFortitudes < ActiveRecord::Migration
    def self.up
      rename_column :fortitudes, :base, :fortitude_base
    end

    def self.down
      rename_column :fortitudes, :fortitude_base, :base    
    end
  end