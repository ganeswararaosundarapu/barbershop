class BookingSlot < ActiveRecord::Base
  belongs_to :slot_timing
  default_scope -> {where(deleted: false)}

  # validates :name, presence: true
  # validate :valid_date?
  # def valid_date?
  #   if date.present?
  #     begin
  #       unless Date.parse(date, "mm-dd-yyyy").is_a?(Date)
  #         errors.add(:date, "Is an invalid date.")
  #       end
  #     rescue Exception => e
  #       errors.add(:date, e.message)
  #     end
  #   end
  # end

end
