class DeliveryEntry < ApplicationRecord
	validates :date, presence: true
	validates :in, presence: true
	validates :company, presence: true
	validates :plate_vehicle, presence: true
	validates :plate_trailer, presence: true
	validates :plate_state, presence: true
	validates :initials, presence: true
	validates :pass_num, presence: true
end
