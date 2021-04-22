class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :feedback
      t.datetime :time

      t.timestamps
    end
  end
end
