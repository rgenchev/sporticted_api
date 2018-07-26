class AddPlaceReferenceToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :place, index: true
  end
end
