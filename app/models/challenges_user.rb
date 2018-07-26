class ChallengesUser < ApplicationRecord
  validates :challenge_id, presence: true
  validates :user_id, presence: true
end
