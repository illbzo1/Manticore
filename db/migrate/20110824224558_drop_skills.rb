class DropSkills < ActiveRecord::Migration
  def self.up
    drop_table :skills
  end

  def self.down
    create_table :skills
  end
end
