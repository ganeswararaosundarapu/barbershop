class CreateSlotTimings < ActiveRecord::Migration
  def change
    create_table :slot_timings do |t|
      t.string :slot
      t.time :start_at
      t.time :end_at
      t.boolean :deleted, default: false # prevents the record deletion from the table
      t.timestamps null: false
    end

    add_index :slot_timings, :deleted
    add_index :slot_timings, [:end_at, :start_at, :deleted], name: "slot_timings_sdd"
    add_index :slot_timings, [:slot, :deleted]
  end
end
