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

ActiveRecord::Schema.define(version: 20171128001729) do

# Could not dump table "Users" because of following StandardError
#   Unknown type 'digest' for column 'password'

  create_table "earned_rewards_joins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reward_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reward_id"], name: "index_earned_rewards_joins_on_reward_id"
    t.index ["user_id"], name: "index_earned_rewards_joins_on_user_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "method"
    t.integer "card_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payment_types_on_user_id"
  end

  create_table "project_type_joins", force: :cascade do |t|
    t.integer "project_id"
    t.integer "project_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_type_joins_on_project_id"
    t.index ["project_type_id"], name: "index_project_type_joins_on_project_type_id"
  end

  create_table "project_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "funding_goal"
    t.date "start_date"
    t.date "end_date"
    t.integer "user_id"
    t.integer "project_type_id"
    t.integer "total_amount_raised"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_type_id"], name: "index_projects_on_project_type_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "remaining_stock"
    t.integer "amount"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_rewards_on_project_id"
  end

  create_table "supported_projects_joins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_supported_projects_joins_on_project_id"
    t.index ["user_id"], name: "index_supported_projects_joins_on_user_id"
  end

end
