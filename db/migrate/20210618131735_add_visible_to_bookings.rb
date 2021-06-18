class AddVisibleToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :visible, :boolean, default: true
  end
end
