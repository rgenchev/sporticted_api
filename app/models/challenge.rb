class Challenge < ApplicationRecord
  belongs_to :challenger, class_name: "User"
  belongs_to :challenged, class_name: "User"
  belongs_to :place
  belongs_to :game

  has_and_belongs_to_many :users
end
