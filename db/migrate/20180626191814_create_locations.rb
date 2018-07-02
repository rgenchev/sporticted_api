class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address
      t.string :city
      t.integer :post_code
      t.string :country

      t.timestamps
    end
  end
end
