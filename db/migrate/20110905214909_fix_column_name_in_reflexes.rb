class FixColumnNameInReflexes < ActiveRecord::Migration
    def self.up
      rename_column :reflexes, :base, :reflex_base
    end

    def self.down
      rename_column :reflexes, :reflex_base, :base    
    end
  end