class AddSlotsToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :slots, :text, array: true, default:[]
  end
end
