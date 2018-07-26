class CreateChallengesUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges_users do |t|
      t.belongs_to :challenge, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
