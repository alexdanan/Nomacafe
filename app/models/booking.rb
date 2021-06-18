class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review, dependent: :nullify
  has_one :cafe, through: :table
  enum status: [:pending, :accepted, :declined]

  def booking_headline
    "You seat has been #{status} at #{table.cafe.name} 
    located at #{table.cafe.location} you have a #{table.name} 
    with a #{table.seat} 
    costing a total of €#{((table.min_credits * (end_time - start_time)) / 7200)} #{(table.cafe.photo.key)}"
  end

end
