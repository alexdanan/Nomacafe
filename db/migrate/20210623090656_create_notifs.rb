class CreateNotifs < ActiveRecord::Migration[6.0]
  def change
    create_table :notifs do |t|

      t.timestamps
    end
  end
end
