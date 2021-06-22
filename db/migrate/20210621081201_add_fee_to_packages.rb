class AddFeeToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :fee, :integer
  end
end
