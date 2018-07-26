class RemoveRatingFromHosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :hosts, :rating, :integer
  end
end
