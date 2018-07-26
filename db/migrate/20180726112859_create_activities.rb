class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :game, index: true
      t.references :challenge, index: true
      t.references :result, index: true

      t.timestamps
    end
  end
end
