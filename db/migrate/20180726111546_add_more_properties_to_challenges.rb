class AddMorePropertiesToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :date, :datetime
    add_column :challenges, :is_confirmed, :boolean, default: :false
    add_column :challenges, :is_accepted, :boolean, default: :false
  end
end
