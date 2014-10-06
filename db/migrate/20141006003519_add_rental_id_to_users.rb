class AddRentalIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rental_id, :integer
  end
end
