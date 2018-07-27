class AddUserReferenceToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_reference :challenges, :creator, index: true, foreign_key: :users
  end
end
