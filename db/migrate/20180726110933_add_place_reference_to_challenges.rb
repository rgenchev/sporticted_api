class AddPlaceReferenceToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_reference :challenges, :place, index: true
  end
end
