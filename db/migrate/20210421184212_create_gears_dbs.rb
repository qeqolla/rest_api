class CreateGearsDbs < ActiveRecord::Migration[6.1]
  def change
    create_table :user do |t|
      t.integer :id
      t.string :name
      t.string :lastName
      t.string :email

      t.timestamps
    end

    create_table :item do |t|
      t.string :name

    end

    create_table :booking do |t|
      t.date :startRent
      t.date :endRent

    end

    create_table :review do |t|
      t.string :feedback
      t.datetime :time

    end
  end
end
