class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :startRent
      t.date :endRent

      t.belongs_to :user
      t.belongs_to :item

      t.timestamps
    end
  end
end
