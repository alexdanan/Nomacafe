class Table < ApplicationRecord
  SEAT = ["chair", "sofa", "stool"]
  belongs_to :cafe
  has_many :bookings, dependent: :destroy
  validates :spots, :min_credits, presence: true
  validates :seat, inclusion: {in: SEAT}
  monetize :price_cents
end
