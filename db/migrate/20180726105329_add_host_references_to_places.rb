class AddHostReferencesToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_reference :places, :host, index: true
  end
end
