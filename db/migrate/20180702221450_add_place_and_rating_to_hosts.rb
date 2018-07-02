class AddPlaceAndRatingToHosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :hosts, :place, foreign_key: true, index: true
    add_column :hosts, :rating, :integer
  end
end
