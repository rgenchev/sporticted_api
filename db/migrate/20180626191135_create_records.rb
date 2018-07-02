class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :wins
      t.integer :losses
      t.integer :draws

      t.timestamps
    end
  end
end
