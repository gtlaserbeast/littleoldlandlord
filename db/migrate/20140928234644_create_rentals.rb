class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :address
      t.string :description
      t.float :latitude
      t.float :longitude
      t.string :availability
      t.string :pay_state

      t.timestamps
    end
  end
end
