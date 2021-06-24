class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :table
  has_one :review, dependent: :destroy
  has_one :cafe, through: :table
  enum status: [:pending, :accepted, :declined]
  # before_create :set_booking_times
  before_create :set_owed_money
  after_update :notify_cafe_owner
  SLOTS = { morning: { start: 11, end: 15 }, afternoon: { start: 15, end: 19 } }

  acts_as_notifiable :users,
  targets: ->(booking, key) {
    if key == "booking.owner"
      [booking.cafe.user]
    else
      users = booking.table.bookings_by_slot(booking.start_time, booking.parse_slot(booking.slots.first)).map {|booking| booking.user}
      users - [booking.user]
    end
    },
    notifiable_path: :booking_notifiable_path

  def booking_notifiable_path
    dashboard_path
  end

  def booking_headline
    "Your seat has been #{status} at #{table.cafe.name}
    located at #{table.cafe.location}. You have a #{table.name}
    with a #{table.seat}
    costing a total of €#{table.min_credits}"
  end

  def parse_slot(slot)
    slot.split("_").first
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

  def notify_cafe_owner
    if accepted?
      notify :users, key: "booking.owner"
      notify :users, key: "booking.table.nomads"
    end
  end
end
