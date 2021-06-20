class AddIconsToTables < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :outside, :boolean, default: false
    add_column :tables, :outlet, :boolean, default: true
  end
end
