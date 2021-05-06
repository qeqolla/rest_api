class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name

      t.belongs_to :city
      t.timestamps
    end
  end
end