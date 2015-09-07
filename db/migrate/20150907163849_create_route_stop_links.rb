class CreateRouteStopLinks < ActiveRecord::Migration
  def change
    create_table :route_stop_links do |t|
      t.integer :route_id, null: false
      t.integer :stop_id, null: false
      t.integer :link_order, null: false

      t.timestamps null: false
      t.index :link_order
      t.index [ :route_id, :stop_id ]
    end
  end
end
