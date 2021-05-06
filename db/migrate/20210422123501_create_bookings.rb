class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_rent
      t.date :end_rent

      t.belongs_to :user
      t.belongs_to :item

      t.timestamps
    end
  end
end
