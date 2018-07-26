class Activity < ApplicationRecord
  belongs_to :game
  belongs_to :challenge
  belongs_to :result
end



  # create_table "activities", force: :cascade do |t|
  #   t.integer "game_id"
  #   t.integer "challenge_id"
  #   t.integer "result_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.index ["challenge_id"], name: "index_activities_on_challenge_id"
  #   t.index ["game_id"], name: "index_activities_on_game_id"
  #   t.index ["result_id"], name: "index_activities_on_result_id"
  # end
