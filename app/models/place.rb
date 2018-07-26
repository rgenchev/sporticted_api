class Place < ApplicationRecord
  has_one :location
  has_many :challenges

  belongs_to :host
end
