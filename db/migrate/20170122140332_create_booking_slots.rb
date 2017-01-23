class CreateBookingSlots < ActiveRecord::Migration
  def change
    create_table :booking_slots do |t|
      t.belongs_to :slot_timing
      t.date :date
      t.boolean :deleted, default: false # prevents the record deletion from the table
      t.timestamps null: false
    end

    add_index :booking_slots, :deleted
    add_index :booking_slots, [:date, :slot_timing_id, :deleted], name: "booking_slots_dsd"
  end
end
