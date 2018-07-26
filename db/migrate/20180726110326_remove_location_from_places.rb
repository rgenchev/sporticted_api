class RemoveLocationFromPlaces < ActiveRecord::Migration[5.2]
  def change
    remove_column :places, :location, :integer
  end
end
