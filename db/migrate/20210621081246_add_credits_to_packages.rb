class AddCreditsToPackages < ActiveRecord::Migration[6.0]
  def change
    add_column :packages, :credits, :integer
  end
end
