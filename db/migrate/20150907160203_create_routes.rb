class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name, null: false
      t.integer :bus_line_id, null: false
      t.integer :route_order, null: false

      t.timestamps null: false
      t.index :bus_line_id
      t.index :route_order
    end
  end
end
