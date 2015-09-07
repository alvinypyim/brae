class CreateBusAssignments < ActiveRecord::Migration
  def change
    create_table :bus_assignments do |t|
      t.integer :bus_id, null: false
      t.integer :bus_line_id, null: false
      t.time :depart_at, null: false

      t.timestamps null: false
      t.index :bus_id
      t.index :bus_line_id
    end
  end
end
