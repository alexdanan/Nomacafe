class AddWifiToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :wifi, :boolean, default: true
  end
end
