class Challenge < ApplicationRecord
  belongs_to :challenger, class_name: "User"
  belongs_to :challenged, class_name: "User"
  belongs_to :place
  belongs_to :game

  has_and_belongs_to_many :users, dependent: :nullify
  has_one :activity
  has_one :result, through: :activity

  has_one :host, through: :place

  after_save :create_activities, if: Proc.new { |challenge| challenge.is_confirmed }

  private
    def create_activities
      Activity.create(challenge: self, user: self.challenger)
      Activity.create(challenge: self, user: self.challenged)
    end
end
