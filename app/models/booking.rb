class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review, dependent: :nullify
  has_one :cafe, through: :table
  enum status: [:pending, :accepted, :declined]
  
  before_create :set_booking_times
  before_create :set_owed_money
  
  SLOTS = {morning: {start: 11, end: 15}, afternoon: {start: 15, end: 19}}

  def booking_headline
    "Your seat has been #{status} at #{table.cafe.name} 
    located at #{table.cafe.location}. You have a #{table.name} 
    with a #{table.seat} 
    costing a total of €#{table.min_credits}"
  end

  def set_booking_times
    self.start_time = DateTime.parse(slots.first.split("_").last).change({hour: SLOTS[slots.first.split("_").first.to_sym][:start]})
    self.end_time = DateTime.parse(slots.last.split("_").last).change({hour: SLOTS[slots.last.split("_").first.to_sym][:end]})
  end

  def set_owed_money
    if (start_time - end_time)/60/60 == 4
      table.cafe.increment!(:owed_money, table.min_credits)
    else
      table.cafe.increment!(:owed_money, table.min_credits * 2)
    end
  end
end
