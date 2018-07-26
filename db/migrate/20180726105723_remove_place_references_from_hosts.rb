class RemovePlaceReferencesFromHosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :hosts, :place_id, :integer
  end
end
