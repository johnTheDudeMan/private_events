class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.integer :attendee_id
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
