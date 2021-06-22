class Table < ApplicationRecord
  SEAT = ["chair", "sofa", "stool"]
  belongs_to :cafe
  has_many :bookings, dependent: :destroy
  validates :spots, :min_credits, presence: true
  validates :seat, inclusion: {in: SEAT}

  def bookings_by_slot(day, slot)
    day_formatted = day.change({hour: Booking::SLOTS[slot.to_sym][:start]})
    bookings.where("? BETWEEN start_time AND end_time", day_formatted)
  end

  def spots_left(day, slot)
    spots - bookings_by_slot(day, slot).count
  end
end
