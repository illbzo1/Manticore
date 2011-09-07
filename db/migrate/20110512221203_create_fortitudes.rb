class CreateFortitudes < ActiveRecord::Migration
  def self.up
    create_table :fortitudes do |t|
      t.integer :fortitude_base
      t.integer :ability
      t.integer :magic
      t.integer :misc
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :fortitudes
  end
end
