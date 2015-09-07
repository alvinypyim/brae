class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :code, null: false

      t.timestamps null: false
      t.index :code
    end
  end
end
