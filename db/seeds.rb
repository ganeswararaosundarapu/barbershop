slots = ["10:00-11:00", "11:00-12:00", "12:00-13:00", "13:00-14:00", "15:00-16:00", "16:00-17:00", "17:00-18:00", "18:00-19:00"]
slots.each do |slot|
  SlotTiming.find_or_create_by(slot: slot, start_at: slot.split("-")[0], end_at: slot.split("-")[1])
end
puts "Slots seed executed successfully >>>"
