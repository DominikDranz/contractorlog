json.extract! delivery_entry, :id, :date, :in, :out, :company, :plate_vehicle, :plate_trailer, :plate_state, :initials, :pass_num, :created_at, :updated_at
json.url delivery_entry_url(delivery_entry, format: :json)
