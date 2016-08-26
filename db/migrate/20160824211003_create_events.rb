class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :location
      t.integer :creator_id, index: true

      t.timestamps null: false
    end
  end
end
