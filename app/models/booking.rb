class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review, dependent: :nullify
  has_one :cafe, through: :table
  enum status: [:pending, :accepted, :declined]

  def booking_headline
    "Your seat has been #{status} at #{table.cafe.name} 
    located at #{table.cafe.location}. You have a #{table.name} 
    with a #{table.seat} 
    costing a total of €#{table.min_credits}"
  end

end
