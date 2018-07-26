class Host < ApplicationRecord
  belongs_to :user, optional: true
  has_many :places

  validates :user_id, presence: true, uniqueness: true
end
