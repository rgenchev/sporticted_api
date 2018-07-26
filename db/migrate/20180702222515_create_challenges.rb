class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.references :challenger, index: true, foreign_key: :users
      t.references :challenged, index: true, foreign_key: :users

      t.timestamps
    end
  end
end
