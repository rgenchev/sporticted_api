class RemoveLocationReferenceFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :location_id, :integer
  end
end
