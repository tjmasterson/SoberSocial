class CreateEventGuestLists < ActiveRecord::Migration
  def change
    create_table :event_guest_lists do |t|
      t.references :user
      t.references :event

      t.timestamps null: false
    end
  end
end
