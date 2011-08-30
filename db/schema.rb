# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110828203131) do

  create_table "acs", :force => true do |t|
    t.integer  "total"
    t.integer  "base_ac"
    t.integer  "armor"
    t.integer  "shield"
    t.integer  "dex"
    t.integer  "size"
    t.integer  "natural"
    t.integer  "deflection"
    t.integer  "misc"
    t.integer  "reduction"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sr"
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "profession"
    t.integer  "level"
    t.string   "sex"
    t.string   "alignment"
    t.string   "campaign"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feats", :force => true do |t|
    t.text     "feat_desc"
    t.text     "feat_benefit"
    t.text     "feat_notes"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fortitudes", :force => true do |t|
    t.integer  "total"
    t.integer  "base"
    t.integer  "ability"
    t.integer  "magic"
    t.integer  "misc"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hps", :force => true do |t|
    t.integer  "total"
    t.integer  "current"
    t.integer  "nonlethal"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "initiatives", :force => true do |t|
    t.integer  "total"
    t.integer  "dex"
    t.integer  "misc"
    t.integer  "speed"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "item_type"
    t.string   "location"
    t.text     "description"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reflexes", :force => true do |t|
    t.integer  "total"
    t.integer  "base"
    t.integer  "ability"
    t.integer  "magic"
    t.integer  "misc"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.string   "ability"
    t.integer  "ability_mod"
    t.integer  "misc_mod"
    t.integer  "ranks"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specials", :force => true do |t|
    t.text     "special_desc"
    t.text     "special_benefit"
    t.text     "special_notes"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "special_name"
  end

  create_table "spells", :force => true do |t|
    t.string   "school"
    t.string   "level"
    t.string   "components"
    t.string   "casting_time"
    t.string   "range"
    t.string   "target"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "spell_resistance"
    t.text     "description"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "statistics", :force => true do |t|
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wills", :force => true do |t|
    t.integer  "base"
    t.integer  "ability"
    t.integer  "magic"
    t.integer  "misc"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
  end

end
