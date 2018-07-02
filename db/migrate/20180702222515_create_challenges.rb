class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.references :winner, index: true, foreign_key: :users
      t.references :loser, index: true, foreign_key: :users

      t.timestamps
    end
  end
end
