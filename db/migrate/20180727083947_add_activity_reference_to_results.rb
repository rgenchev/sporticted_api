class AddActivityReferenceToResults < ActiveRecord::Migration[5.2]
  def change
    add_reference :results, :activity, index: true
  end
end
