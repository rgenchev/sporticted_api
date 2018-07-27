class RemoveResultReferenceFromActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :result_id, :integer
    remove_column :activities, :result, :integer
  end
end
