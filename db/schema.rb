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

ActiveRecord::Schema.define(version: 2018_07_26_135328) do

  create_table "activities", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "result_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_activities_on_challenge_id"
    t.index ["result_id"], name: "index_activities_on_result_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.integer "challenger_id"
    t.integer "challenged_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "place_id"
    t.datetime "date"
    t.boolean "is_confirmed", default: false
    t.boolean "is_accepted", default: false
    t.integer "game_id"
    t.index ["challenged_id"], name: "index_challenges_on_challenged_id"
    t.index ["challenger_id"], name: "index_challenges_on_challenger_id"
    t.index ["game_id"], name: "index_challenges_on_game_id"
    t.index ["place_id"], name: "index_challenges_on_place_id"
  end

  create_table "challenges_users", force: :cascade do |t|
    t.integer "challenge_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_challenges_users_on_challenge_id"
    t.index ["user_id"], name: "index_challenges_users_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.text "rules"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_hosts_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.integer "post_code"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "place_id"
    t.index ["place_id"], name: "index_locations_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "host_id"
    t.index ["host_id"], name: "index_places_on_host_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer "wins"
    t.integer "losses"
    t.integer "draws"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer "winner_id"
    t.integer "loser_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loser_id"], name: "index_results_on_loser_id"
    t.index ["winner_id"], name: "index_results_on_winner_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.boolean "is_host", default: false
  end

end
