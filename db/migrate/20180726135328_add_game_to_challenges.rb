class AddGameToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_reference :challenges, :game, index: true
  end
end
