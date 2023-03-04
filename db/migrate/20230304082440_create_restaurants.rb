class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      # If you want to have a default state you could write something like:
      # t.boolean :booked_out, default: false

      t.timestamps
    end
  end
end
