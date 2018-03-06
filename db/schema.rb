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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180304200948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "background_skills", force: :cascade do |t|
    t.integer "background_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "name"
    t.text "features"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_pages", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "background_id"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "level"
    t.integer "klass_id"
    t.integer "hit_points"
    t.integer "armor_class"
    t.string "alignment"
    t.text "personality"
    t.text "ideals"
    t.text "bonds"
    t.text "flaws"
    t.integer "race_id"
    t.integer "money"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_skills", force: :cascade do |t|
    t.integer "klass_id"
    t.integer "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.integer "hit_die"
    t.integer "save_1"
    t.integer "save_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_skills"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skill_tests", force: :cascade do |t|
    t.integer "character_page_id"
    t.integer "skill_id"
    t.boolean "proficient"
    t.integer "bonus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
