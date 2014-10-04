class AddFieldsToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :landlord_id, :integer
    add_column :rentals, :rent_price, :float
  end
end
