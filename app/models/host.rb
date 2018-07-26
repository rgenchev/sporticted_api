class Host < ApplicationRecord
  belongs_to :user, optional: true

  validates :user_id, presence: true, uniqueness: true
end
