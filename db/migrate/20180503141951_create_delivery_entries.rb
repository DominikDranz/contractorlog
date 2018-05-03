class CreateDeliveryEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_entries do |t|
      t.date :date
      t.datetime :in
      t.datetime :out
      t.string :company
      t.string :plate_vehicle
      t.string :plate_trailer
      t.string :plate_state
      t.string :initials
      t.string :pass_num

      t.timestamps
    end
  end
end
