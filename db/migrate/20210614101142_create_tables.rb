class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :tables do |t|
      t.integer :spots
      t.integer :min_credits
      # t.references :cafe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
