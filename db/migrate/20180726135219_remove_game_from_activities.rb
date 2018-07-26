class RemoveGameFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :game_id, :integer
  end
end
