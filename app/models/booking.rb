class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review, dependent: :nullify
  has_one :cafe, through: :table
  enum status: [:pending, :accepted, :declined]

  def booking_headline
    "You have a #{status} seat at #{table.cafe.name} located at #{table.cafe.location} you have a #{table.name} #{table.seat} costing €#{((table.min_credits * (end_time - start_time)) / 7200)} #{(table.cafe.photo.key)} <img src="">"
  end

end
